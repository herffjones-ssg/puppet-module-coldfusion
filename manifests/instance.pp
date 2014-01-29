# == Define: coldfusion::app
#
# == Parameters:
#
# [*interface*]
# Which interface the app will listen on.
# - required
#
# [*console_log*]
# Path to app's console log.
# - default: "${instance_dir}/log/console.log"
#
# [*instance*]
# Number corresponding to instance. Starts at 1 and increments.
#
# [*vhost_template*]
# Path to apache vhost template in either autoloader format such as
# 'myapp-vhost.conf.erb' or a fully qualified path such as
# '/srv/app_templates/myapp-vhost.conf.erb'.
# - default: 'default-vhost.conf.erb'
#
define coldfusion::instance (
  $interface="",
  $vhost_template="default-vhost.conf.erb",
  $deploy_dir="",
  $java_args="",
  $newrelic_license_key = 'f3303ace67c7b1ebdc8f9ba68bcf6ff1f2aaf3f0',
) {

  include apache
  include common
  include coldfusion
  require 'appsvn'
  require 'svn::client'
  include wget

  $app_name = template('coldfusion/app_name.erb')

  # Tags everything with the appname for more specific puppet runs
  tag $app_name

  # Set the instance name for readability
  $instancename = $name

  $instancenum = template('coldfusion/instance.erb')

  # validate $instance
  if is_integer($instancenum) == false {
    fail("Name is ${instancename} and instancenum is <${instancenum}> which is not an integer.")
  }

  # validate $app_name
  validate_re($app_name, '[A-Za-z_-]', "${instancename} -- app_name <${app_name}> does not match regex")

  # Hash of config entries for app
  $config = hiera_hash("${app_name}::config")

  $parent_app=$config['coldfusion_parent_app']

  # Set a different jrun port if it has a parent.
  if $parent_app == "" {
    $jrun_port = getvar(downcase("${instancename}_jrun_port"))
  } else {
    # Make sure we have the parent instance on the server.
    #ensure_resource('coldfusion::instance',"${parent_app}${instancenum}", {'ensure' => 'present' })
    $jrun_port = getvar(downcase("${parent_app}${instancenum}_jrun_port"))
  }

  if $interface =~ /^\// {
    #Noop
  } else {
    $inum = $instancenum -1
    $real_interface = "bond0:${inum}"
  }

  # validate $interface
  validate_re($interface, '^\S*$', "${instancename} -- interface <${interface}> does not match regex.")

  # formats interface to be passed on to a template to retrieve the fact.
  # Example: int_to_fact('bond0:0') returns 'ipaddress_bond0_0'.
  $listen_ip_fact = int_to_fact($real_interface)

  if $config['approved'] == true {

    $instance_dir="${coldfusion::apps_dir}/${instancename}"
    # validate $instance_dir
    validate_re($instance_dir, '^(\/)?([^\/\0]+(\/)?)+$', "${instancename} -- apps_dir <${instance_dir}> does not match regex")

    # if vhost_template is a fully qualified path, use that, else prepend
    # 'coldfusion/' to use the autoloader.
    if $vhost_template =~ /^\// {
      $real_vhost_template = $vhost_template
    } else {
      $real_vhost_template = "coldfusion/${vhost_template}"
    }

    if $deploy_dir =~ /^\// {
      $real_deploy_dir = $deploy_dir
    } else {
      $real_deploy_dir = "/x01/www/html/$instancename"
    }

    file { "$real_deploy_dir":
      ensure => directory,
      mode   => '0775',
    }


    # Create directories writeable by coldfusion in the deploy folder.
    if is_array($config['writeable_dirs']) {
      $writeable_dirs = prefix($config['writeable_dirs'], "${real_deploy_dir}/")

      common::mkdir_p { $writeable_dirs:
        require => File["$real_deploy_dir"],
      }

      file { $writeable_dirs:
        ensure  => directory,
        mode    => '0775',
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        require => [
                      Common::Mkdir_p[$writeable_dirs],
                      File["$real_deploy_dir"],
                    ]
      }
    }

    $servername    = $config['servername']
    $serveraliases = $config['serveraliases']
    $ssl           = $config['ssl']
    $rewrite_rules = $config['coldfusion_rewrite_rules']
    $extra_apache_config = $config['extra_apache_config']


    # Nagios Config
    $health_page = $config['health_custom_page']
    if ! $health_page {
      $real_health_page = "/health/"
    } else {
      $real_health_page = $health_page
    }

    $health_text = $config['health_custom_text']
    if ! $health_text {
      $real_health_text = "SUCCESS"
    } else {
      $real_health_text = $health_text
    }

    $contact_groups = $config['contact_groups']
    if ! $contact_groups {
      if $::env == "dev" or $::env == "test" {
        $real_contact_groups = "indywebemail"
      } else {
        $real_contact_groups = "indyweb"
      }
    } else {
      $real_contact_groups = $contact_groups
    }

    $check_period = $config['check_period']
    if ! $check_period {
      if $::env == "dev" or $::env == "test" {
        $real_check_period = "workhours_indy"
      } else {
        $real_check_period = "24x7"
      }
    } else {
      $real_check_period = $check_period
    }

    $normal_check_interval = $config['normal_check_interval']
    if ! $normal_check_interval {
      if $::env == "dev" or $::env == "test" {
        $real_normal_check_interval = "5"
      } else {
        $real_normal_check_interval = "5"
      }
    } else {
      $real_normal_check_interval = $normal_check_interval
    }

    $notification_interval = $config['notification_interval']
    if ! $notification_interval {
      if $::env == "dev" or $::env == "test" {
        $real_notification_interval = "90"
      } else {
        $real_notification_interval = "30"
      }
    } else {
      $real_notification_interval = $notification_interval
    }

    $first_notification_delay = $config['first_notification_delay']
    if ! $first_notification_delay {
      if $::env == "dev" or $::env == "test" {
        $real_first_notification_delay = "90"
      } else {
        $real_first_notification_delay = "5"
      }
    } else {
      $real_first_notification_delay = $first_notification_delay
    }

    $notification_period = $config['notification_period']
    if ! $notification_period {
      if $::env == "dev" or $::env == "test" {
        $real_notification_period = "workhours_indy"
      } else {
        $real_notification_period = "24x7"
      }
    } else {
      $real_notification_period = $notification_period
    }

    # Find the real instance to manage by event handler
    if $parent_app == "" {
      $real_instance = "${instancename}"
    } else {
      $real_instance = "${parent_app}${instancenum}"
    }

    $event_handler = $config['event_handler']
    if ! $event_handler {
      $real_event_handler = "servicebounce!${real_instance}"
    } else {
      if $event_handler == "none" {
        $real_event_handler = ""
      }
    }

    $listen_ip = getvar($listen_ip_fact)

    @@nagios_service { "${instancename}${hostname}":
      ensure              => present,
      use                 => "generic-service",
      host_name           => $hostname,
      service_description => "HTTP_${instancename} on ${fqdn}",
      check_command       => "hj_ae_check_http_generic!${::env}!${app_name}!-w 5!-c 10!-H ${servername}!-I ${listen_ip}!-p 80!-u ${health_page}!--onredirect=sticky!--string=\'${health_text}\'",
      contact_groups      => $real_contact_groups,
      event_handler       => $real_event_handler,
      first_notification_delay   => $real_first_notification_delay,
      check_period        => $real_check_period,
      notification_period => $real_notification_period,
      normal_check_interval   => $real_normal_check_interval,
      notification_interval   => $real_notification_interval,
      target              => "/etc/nagios/websites/${servername}.cfg",
    }

    # validate servername
    $is_servername_valid = is_domain_name($servername)
    if $is_servername_valid != true {
      fail("coldfusion::app::${instancename} -- servername <${servername}> is invalid.")
    }

    $cleaned_name = clean_name($instancename)
    $server_default_alias = "${cleaned_name}${::fqdn}"

    # validate server_default_alias
    $is_server_default_alias_valid = is_domain_name($server_default_alias)
    if $is_server_default_alias_valid != true {
      fail("coldfusion::app::${instancename} -- server_default_alias <${server_default_alias}> is invalid.")
    }

    # Document root subfolder.  Will be after the /x01/www/html/instancename
    $sub_path = $config['sub_path']

    file { "${instancename}_apache_vhost":
      ensure  => file,
      path    => "/etc/httpd/conf.d/${instancename}.conf",
      content => template($real_vhost_template),
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      require => File['httpd_vdir'],
      notify  => Service['httpd'],
    }

    # used in vhost template
    $serveradmin = $config['serveradmin'] ? {
      undef   => $coldfusion::serveradmin,
      default => $config['serveradmin'],
    }

    # validate $vhost_template
    validate_re($vhost_template, '[\/\.A-Za-z_-]+.erb$', "${instancename} -- vhost_template <${vhost_template}> does not match regex.")


    emailrequest::dns { "DNS for $server_default_alias":
      hostname     => $server_default_alias,
      ip           => getvar($listen_ip_fact),
    }

    # Coldfusion specific work if there's not parent app defined.
    if $parent_app == "" {
      coldfusion::hotfix { "$instancename": }

      # Initialize the instance after the install is completed
      exec { "${instancename}_setup":
        command => "su -c '${coldfusion::install::install_path}/automation/cfinstance.sh -i ${instancename} -p ${coldfusion::decrypt_admin_pass}' -",
        cwd     => "${coldfusion::install::install_path}",
        creates => "${instance_dir}/SERVER-INF/jrun.xml",
        path    => ["/usr/bin", "/bin", "/usr/local/bin", "${install_path}"],
        require => Service["coldfusion9multi"],
      }

  # Check for robust debug config
  $robust_debug = $config['robust_debug']
  if $robust_debug {
    # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-debug.xml - Used for debugging
    file { "${instancename}_neo-debug.xml":
      ensure  => file,
      owner   => $coldfusion::user,
      group   => $coldfusion::group,
      mode    => "0755",
      path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-debug.xml",
      source  => "puppet:///modules/coldfusion/neo-debug.xml",
      notify  => Service[$instancename],
    }
  } else {
    # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-debug.xml - Used for debugging
    file { "${instancename}_neo-debug.xml":
      ensure  => file,
      owner   => $coldfusion::user,
      group   => $coldfusion::group,
      mode    => "0755",
      path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-debug.xml",
      source  => "puppet:///modules/coldfusion/neo-debug.norobust.xml",
      notify  => Service[$instancename],
    }
  }

      # Name of Datasources
      $datasources = $config['datasources']

      # Config entries from config hash
      $branch = $config['branch']

      $cf_mappings = $config['cf_mappings']

      $uuid_for_cftoken = $config['coldfusion_uuid_for_cftoken']

      # validate branch
      validate_re($branch, '^([^\/\0]+(\/)?)+$', "${instancename} -- branch <${branch}> does not match regex.")

      # Set maximum POST size
      $max_post = $config['max_post'] ? {
        undef   => '100.0',
        default => $config['max_post'],
      }

      # Set default Java Heap
      $java_heap = downcase($config['java_heap']) ? {
        undef   => '512m',
        default => downcase($config['java_heap']),
      }

      # validate java_heap
      validate_re($java_heap, '^[0-9]+(k|m|g)$', "${instancename} -- java_heap <${java_heap}> does not match regex.")

      $java_perm_size = downcase($config['java_perm_size']) ? {
        undef   => '256m',
        default => downcase($config['java_perm_size']),
      }

      # validate java_perm_size
      validate_re($java_perm_size, '^[0-9]+(k|m|g)$', "${instancename} -- java_perm_size <${java_perm_size}> does not match regex.")

      $j2ee_sessions = $config['coldfusion_j2ee_sessions']


      # Array of all datasources
      $all_datasources = hiera('datasource')

      if empty($datasources) {
        # No Datasources defined
      }
      else {
        # Verify datasources are defined. Get a list of all datasources, put their names into an array, error if any local datasources are missing from it.
        $verify_ds = inline_template("<% @alldsnames = [] -%><% for @ds in @all_datasources -%><% @alldsnames.push(@ds['name']) -%><% end -%>\
                                      <% for @dsname in @datasources -%><% if ! @alldsnames.index(@dsname) -%>Missing Datasource Definition: <%= @dsname -%>\
                                      <% end -%><% end -%>")

        # Fail if you can't find datasource in "Found" string
        if $verify_ds =~ /Missing/ {
          fail("${instancename} - ${verify_ds}")
        }

        $type = inline_template('<% for @dsname in @datasources -%><% for @ds in @all_datasources -%><% if @ds[\'name\'] == @dsname -%>Type:<%= @ds[\'type\'] %><% end -%><% end -%><% end -%>')

        # Oracle driver
        if $type =~ /Type:oracle/ {

          include oracle::driver

          if $type =~ /Type:oracle_legacy/ {
            wget::fetch { "${instancename}_oracle_driver":
              source      => "${oracle::driver::source}/ojdbc14.jar",
              destination => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/ojdbc14.jar",
              timeout     => 0,
              verbose     => false,
              notify      => Service[$instancename],
            }

            file { "${instancename}_oracle_driver_file":
              ensure  => file,
              owner   => $coldfusion::user,
              group   => $coldfusion::group,
              path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/ojdbc14.jar",
              mode    => '0644',
              require => Wget::Fetch["${instancename}_oracle_driver"],
              notify  => Service[$instancename],
            }
          } else {
            wget::fetch { "${instancename}_oracle_driver":
              source      => "${oracle::driver::source}/ojdbc6.jar",
              destination => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/ojdbc6.jar",
              timeout     => 0,
              verbose     => false,
              notify      => Service[$instancename],
            }

            file { "${instancename}_oracle_driver_file":
              ensure  => file,
              owner   => $coldfusion::user,
              group   => $coldfusion::group,
              path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/ojdbc6.jar",
              mode    => '0644',
              require => Wget::Fetch["${instancename}_oracle_driver"],
              notify  => Service[$instancename],
            }
          }
        }

        $dspath = "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-datasource.xml"

        # Ugly hack. Copies the puppet generated config to the coldfusion path if the puppet config is modified.
        # I really wish ColdFusion wouldn't format an xml file if it doesn't modify it.
        exec { "${instancename}_move_datasource":
            command     => "cp ${dspath}.puppet ${dspath}",
            path        => '/bin:/usr/bin:/sbin:/usr/sbin',
            refreshonly => true,
            require     => File["${instancename}_datasource_config"],
            notify      => Service[$instancename],
        }

        # Another hack.  Replace the datasouce configuration with the one generated by puppet if they are different bytsizes
        # This should catch if someone updates the datasource manually
        # Removed because it doesn't seem to work in all cases. Nobody better managed datasources outside of puppet. ;)
        #exec { "${instancename}_update_datasource":
        #    command => "cp ${dspath}.puppet ${dspath}",
        #    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
        #    unless  => "test $(wc -c ${dspath} | awk '{print \$1}') -eq $(wc -c ${dspath}.puppet | awk '{print \$1}')",
        #    require => File["${instancename}_datasource_config"],
        #    notify  => Service[$instancename],
        #}

        # Create a puppet managed datasource file
        file { "${instancename}_datasource_config":
          ensure  => file,
          owner   => $coldfusion::user,
          group   => $coldfusion::group,
          path    => "${dspath}.puppet",
          content => template('coldfusion/xml/datasource_config.xml.erb'),
          notify  => Exec["${instancename}_move_datasource"],
        }

      }

      if is_array($config['svn_dirs']) {
        # Making this unique.  "foo/bar/" becomes "iname_foo/bar"
        $instance_svn_dirs = prefix($config['svn_dirs'], "${instancename}_")

        coldfusion::svn_dir { "${instance_svn_dirs}":
          branch        => $branch,
          instance_dir  => $instance_dir,
          instancename  => $instancename,
          app_name      => $app_name,
          require       => Exec["${instancename}_setup"],
        }
      }

      file { "$instance_dir":
        ensure  => directory,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        mode    => '0751',
        require => Exec["${instancename}_setup"],
        notify  => Service[$instancename],
      }

      acl { "$instance_dir":
        action     => 'set',
        permission => [
                        "user::rwx",
                        "group::r-x",
                        "other::--x",
                        "user:apache:r-x",
                        "default:user:apache:r-x",
                        ],
        require   => File["$instance_dir"],
        recursive => true,
      }

      # Fix coldfusion directory permissions.  Exclude dirs we don't care about
      exec { "${instance_dir}_perms":
        command => "find \"$instance_dir\" -type d -exec chmod 751 {} \;",
        unless  => "find \"$instance_dir\" -type d -not -perm 751 | grep -v -e 'SERVER-INF/temp' -e 'cfusion/stubs' -e '.svn' | wc -l | grep -q '^0$'",
        path    => '/bin:/usr/bin:/sbin:/usr/sbin',
        require => Acl["$instance_dir"],
      }


      $configfile="jvm_${instancename}.config"

      # java_args are validated in the template
      file { "${instancename}_run_conf":
        ensure  => file,
        path    => "${coldfusion::base_dir}/bin/${configfile}",
        content => template('coldfusion/app_run.conf.erb'),
        notify  => Service[$instancename],
      }

      file { "${coldfusion::base_dir}/newrelic/${instancename}":
        ensure  => directory,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        require => File["${coldfusion::base_dir}/newrelic"],
      }

      file { "${coldfusion::base_dir}/newrelic/${instancename}/newrelic.jar":
        ensure  => file,
        owner   => $jboss::user,
        group   => $jboss::group,
        mode    => '0755',
        source  => "puppet:///modules/coldfusion/newrelic.jar",
        require => File["${coldfusion::base_dir}/newrelic/${instancename}"],
        notify  => Service[$instancename],
      }

      file { "${coldfusion::base_dir}/newrelic/${instancename}/newrelic.yml":
        ensure  => file,
        owner   => $jboss::user,
        group   => $jboss::group,
        content => template('coldfusion/newrelic.yml.erb'),
        require => File["${coldfusion::base_dir}/newrelic/${instancename}"],
        notify  => Service[$instancename],
      }

      file { "${instancename}_init_script":
        ensure  => file,
        path    => "/etc/init.d/${instancename}",
        content => template('coldfusion/cfinittemplate.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        notify  => Service[$instancename],
      }

      exec { "coldfusion_app_${instancename}_fact":
        command => "echo ${app_name}=${app_name} > /etc/facter/facts.d/${app_name}.txt",
        unless  => "grep ^${app_name}=${app_name}$ /etc/facter/facts.d/${app_name}.txt",
        path    => '/bin:/usr/bin:/sbin:/usr/sbin',
      }

      service { $instancename:
        ensure       => running,
        enable       => true,
        hasrestart   => true,
        #    require => User[$coldfusion::user],
      }

      # ./cfusion.ear/META-INF/application.xml - Defaults are fine
      file { "${instancename}_application.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/META-INF/application.xml",
        content => template('coldfusion/xml/application.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/web.xml - Defaults
      file { "${instancename}_web.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/web.xml",
        content => template('coldfusion/xml/web.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/adminconfig.xml - Defaults are fine
      file { "${instancename}_adminconfig.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/adminconfig.xml",
        content => template('coldfusion/xml/adminconfig.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./SERVER-INF/default-web.xml - Defaults are fine
      file { "${instancename}_default-web.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/SERVER-INF/default-web.xml",
        content => template('coldfusion/xml/default-web.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/logger.xml - Defaults are (probably) fine
      file { "${instancename}_logger.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/logger.xml",
        content => template('coldfusion/xml/logger.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./SERVER-INF/jrun.xml - Generate from another file?  Ignore?
      file { "${instancename}_jrun.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/SERVER-INF/jrun.xml",
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/jrun-web.xml - Cookie config
      file { "${instancename}_jrun-web.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/jrun-web.xml",
        content => template('coldfusion/xml/jrun-web.xml.erb'),
        notify  => Service[$instancename],
      }


      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-comobjmap.xml - Defaults
      file { "${instancename}_neo-comobjmap.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-comobjmap.xml",
        content => template('coldfusion/xml/neo-comobjmap.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-metric.xml - Defaults
      file { "${instancename}_neo-metric.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-metric.xml",
        content => template('coldfusion/xml/neo-metric.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-registry.xml - Defaults
      file { "${instancename}_neo-registry.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-registry.xml",
        content => template('coldfusion/xml/neo-registry.xml.erb'),
        notify  => Service[$instancename],
      }


      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-archivedeploy.xml - Defaults
      file { "${instancename}_neo-archivedeploy.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-archivedeploy.xml",
        content => template('coldfusion/xml/neo-archivedeploy.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-clientstore.xml - CFToken
      file { "${instancename}_neo-clientstore.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-clientstore.xml",
        content => template('coldfusion/xml/neo-clientstore.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-cron.xml - Defaults (should be in cron server)
      file { "${instancename}_neo-cron.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-cron.xml",
        content => template('coldfusion/xml/neo-cron.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-graphing.xml - Defaults
      file { "${instancename}_neo-graphing.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-graphing.xml",
        content => template('coldfusion/xml/neo-graphing.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-logging.xml - Defaults
      file { "${instancename}_neo-logging.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-logging.xml",
        content => template('coldfusion/xml/neo-logging.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-mail.xml - Same for every server
      file { "${instancename}_neo-mail.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-mail.xml",
        content => template('coldfusion/xml/neo-mail.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-probe.xml - Defaults
      file { "${instancename}_neo-probe.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-probe.xml",
        content => template('coldfusion/xml/neo-probe.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-runtime.xml - Mappings (including CFIDE)
      file { "${instancename}_neo-runtime.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-runtime.xml",
        content => template('coldfusion/xml/neo-runtime.xml.erb'),
        notify  => Service[$instancename],
      }

      # ./cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-security.xml - Different based on environment (dev/test/prod)
      file { "${instancename}_neo-security.xml":
        ensure  => file,
        owner   => $coldfusion::user,
        group   => $coldfusion::group,
        mode    => "0755",
        path    => "${instance_dir}/cfusion.ear/cfusion.war/WEB-INF/cfusion/lib/neo-security.xml",
        source  => "puppet:///modules/coldfusion/${env}_securitytemplate.xml",
        notify  => Service[$instancename],
      }

      file { "${coldfusion::install::wsconfig_path}/${instancename}_jrunserver.store":
        ensure => 'file',
        owner  => 'apache',
        group  => 'apache',
        mode   => "0744",
        source => "puppet:///modules/coldfusion/jrunserver.store",
        notify => Service['httpd'],
      }

      $proxy_xpath="/jrun-server/service[@class='jrun.servlet.jrpp.JRunProxyService']/attribute[@name='deactivated']"
      exec { "${instancename}_jrun_proxy":
        command => "xmlstarlet ed -L -u \"${proxy_xpath}\" -v false \"${instance_dir}/SERVER-INF/jrun.xml\"",
        unless  => "xmlstarlet sel -t -v \"${proxy_xpath}\" \"${instance_dir}/SERVER-INF/jrun.xml\" | grep false",
        cwd     => $instance_dir,
        path    => '/bin:/usr/bin:/sbin:/usr/sbin',
        notify  => [
          Service[$instancename],
          Service['httpd'],
          ],
      }
    }
  }
}
