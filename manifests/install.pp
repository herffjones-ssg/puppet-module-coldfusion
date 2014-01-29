# == Class: coldfusion::install

class coldfusion::install(
  $cf_installer   = "http://ssgsvn.herffjones.hj-int/file_repo/coldfusion/ColdFusion_9_WWEJ_linux64.bin",
  $cf_901_path    = "http://ssgsvn.herffjones.hj-int/file_repo/coldfusion/ColdFusion_update_901_WWEJ_linux64.bin",
  $install_path   = "/x01/cfinstall",
  $license_key    = "",
  $wsconfig_path  = "${coldfusion::base_dir}/lib/wsconfig/1",
  $java_heap      = '2048m',
  $java_perm_size = '512m',
  $java_args       = '',
  $newrelic_license_key = 'f3303ace67c7b1ebdc8f9ba68bcf6ff1f2aaf3f0',
){
  include wget
  include limits

  limits::limits { 'coldfusion_nofile':
    ensure     => present,
    user       => 'coldfusion',
    limit_type => 'nofile',
    hard       => 16384,
    soft       => 16384,
  }

  # Make the path where the install files will be placed.
  common::mkdir_p { $install_path: }

  file { $install_path:
    ensure  => directory,
    mode    => '0755',
    require => Common::Mkdir_p[$install_path],
  }

  # Copy the automation tools to the server
  file { 'automation_tools':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/coldfusion/automation/',
    path    => "${install_path}/automation/",
    recurse => remote,
  }

  # Download the installation file from ssgsvn
  wget::fetch { "cf_installer":
    source      => "$cf_installer",
    destination => "${install_path}/ColdFusion_9_WWE_linux64.bin",
    timeout     => 0,
    verbose     => false,
    require     => File["$install_path"],
  }

  # Make sure the installer is executable
  file { "${install_path}/ColdFusion_9_WWE_linux64.bin":
    mode        => "0744",
    require     => Wget::Fetch["cf_installer"],
  }

  # The installation script that runs the installer and changes ownership of /opt/jrun4
  file { "${install_path}/cfinstaller.sh":
    content  => template('coldfusion/cfinstaller.sh.erb'),
    mode     => "0755",
    require  => File["${install_path}/ColdFusion_9_WWE_linux64.bin"],
  }

  # The installation script that runs the installer and changes ownership of /opt/jrun4
  file { "${install_path}/cfinit.sh":
    content  => template('coldfusion/cfinit.sh.erb'),
    mode     => "0755",
  }

  # Generate the silent install properties file
  file { "${install_path}/installer.properties":
    content => template('coldfusion/installer.properties.erb'),
    mode    => "0640",
    require  => File["${install_path}/ColdFusion_9_WWE_linux64.bin"],
  }

  # Run the installer (force to init an environment with su -)
  exec { "cfinstall_script":
    command => "su -c ${install_path}/cfinstaller.sh -",
    cwd     => "$install_path",
    creates => "/opt/jrun4/lib/servers.xml",
    path    => ["/usr/bin", "/bin", "/usr/local/bin", "${install_path}"],
    require => [
      File["${install_path}/cfinstaller.sh"],
      File["${install_path}/installer.properties"],
    ]
  }

  # Admin instance configuration
  $instancename = "cfusion"
  $configfile = "jvm.config"

  # java_args are validated in the template
  file { "${instancename}_run_conf":
    ensure  => file,
    path    => "${coldfusion::base_dir}/bin/${configfile}",
    content => template('coldfusion/app_run.conf.erb'),
    notify  => Service["coldfusion9multi"],
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
    notify  => Service['coldfusion9multi'],
  }

  file { "${coldfusion::base_dir}/newrelic/${instancename}/newrelic.yml":
    ensure  => file,
    owner   => $jboss::user,
    group   => $jboss::group,
    content => template('coldfusion/newrelic.yml.erb'),
    require => File["${coldfusion::base_dir}/newrelic/${instancename}"],
    notify  => Service['coldfusion9multi'],
  }

  # Setup the init script
  file { "/etc/init.d/coldfusion9multi":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => "0744",
    content => template('coldfusion/cfinittemplate.erb'),
    require => Exec["cfinstall_script"],
  }

  # Setup the init script
  file { "/etc/facter/facts.d/cf_ports.sh":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => "0744",
    content => template('coldfusion/cf_ports.sh.erb'),
  }

  # Ensure the admin service is running
  service { 'coldfusion9multi':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    require    => File["/etc/init.d/coldfusion9multi"],
  }

  # Initialize the instance after the install is completed
  exec { "cf_runinit":
    command => "su -c '${install_path}/cfinit.sh' -",
    cwd     => "$install_path",
    creates => "${install_path}/automation/init.flag",
    path    => ["/usr/bin", "/bin", "/usr/local/bin", "${install_path}"],
    require => [
        Service["coldfusion9multi"],
        File["${install_path}/cfinit.sh"],
      ]
  }

  # Update the password file with admin password from hiera
  file { "${coldfusion::apps_dir}/cfusion/cfusion-ear/cfusion-war/WEB-INF/cfusion/lib/password.properties":
    ensure  => 'file',
    owner   => "${coldfusion::user}",
    group   => "${coldfusion::group}",
    mode    => "0660",
    content => template('coldfusion/password.properties.erb'),
    notify  => Service["coldfusion9multi"],
  }

  # Open firewall port for admin console
  firewall { '100 open port 8300 for SSH':
    action => 'accept',
    dport  => 8300,
    proto  => 'tcp',
  }

  common::mkdir_p { $wsconfig_path: }

  file { $wsconfig_path:
    ensure  => directory,
    mode    => '0755',
    require => Common::Mkdir_p[$wsconfig_path],
  }

  $jrun_port = getvar("${instancename}_jrun_port")

  file { "${wsconfig_path}/mod_jrun22.so":
    ensure => 'file',
    owner  => 'root',
    group  => 'root',
    mode   => "0744",
    source => "puppet:///modules/coldfusion/mod_jrun22.so.${osfamily}.${lsbmajdistrelease}.${architecture}",
    notify  => [
      Service["coldfusion9multi"],
      Service['httpd'],
      ],
  }

  file { "${wsconfig_path}/${instancename}_jrunserver.store":
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => "0744",
    content => template('coldfusion/jrunserver.store.erb'),
    notify  => Service["coldfusion9multi"],
  }

  file { '/etc/httpd/mod.d/jrun.load':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => "0644",
    content => template('coldfusion/jrun.load.erb'),
    notify  => [
      Service["coldfusion9multi"],
      Service['httpd'],
      ],
  }

  coldfusion::hotfix { "cfusion":
    cfwar_path => "cfusion-ear/cfusion-war",
    notify     => Service["coldfusion9multi"],
  }

  $listen_ip_fact = 'ipaddress'
  $servername = "${::hostname}cfadmin.herffjones.hj-int"
  $real_deploy_dir = "${coldfusion::apps_dir}/${instancename}/cfusion-ear/cfusion-war/CFIDE/administrator/"
  $cfide_path = "cfusion-ear/cfusion-war/CFIDE/"
  file { "${instancename}_apache_vhost":
    ensure  => file,
    path    => "/etc/httpd/conf.d/${instancename}.conf",
    content => template('coldfusion/default-vhost.conf.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    notify  => Service['httpd'],
  }

  $proxy_xpath="/jrun-server/service[@class='jrun.servlet.jrpp.JRunProxyService']/attribute[@name='deactivated']"
  exec { "${instancename}_jrun_proxy":
    command => "xmlstarlet ed -L -u \"${proxy_xpath}\" -v false \"${coldfusion::apps_dir}/${instancename}/SERVER-INF/jrun.xml\"",
    unless  => "xmlstarlet sel -t -v \"${proxy_xpath}\" \"${coldfusion::apps_dir}/${instancename}/SERVER-INF/jrun.xml\" | grep false",
    cwd     => "${coldfusion::apps_dir}/${instancename}",
    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
    notify  => [
      Service["coldfusion9multi"],
      Service['httpd'],
      ],
  }

  emailrequest::dns { "CFadmin for $::hostname":
    hostname     => "${servername}",
    ip           => "$::ipaddress",
  }

  file { "jrun4_jre":
    ensure  => absent,
    path    => "${coldfusion::base_dir}/jre",
    recurse => true,
    force   => true,
  }

  file { "SecureTrustCA_cert":
    ensure => file,
    path   => "${install_path}/SecureTrustCA.pem",
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/coldfusion/SecureTrustCA.pem',
  }

  exec { "import_SecureTrust_cert":
    command => "keytool -importcert -file ${install_path}/SecureTrustCA.pem -keystore /usr/local/jdk/jre/lib/security/cacerts -storepass changeit",
    unless  => "keytool -list -v -keystore /usr/local/jdk/jre/lib/security/cacerts -storepass changeit | grep -q 'SecureTrust CA'",
    path    => '/usr/local/jdk/bin:/bin:/usr/bin:/sbin:/usr/sbin',
    require => File['SecureTrustCA_cert'],
  }
}
