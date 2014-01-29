# == Class: coldfusion
#
# Manage coldfusion
#
class coldfusion (
  $base_dir        = '/opt/jrun4',
  $apps_dir        = '/opt/jrun4/servers',
  $user            = 'coldfusion',
  $group           = 'coldfusion',
  $java_package    = undef,
  $serveradmin     = "webmaster@${::domain}",
  $apache_log_path = '/var/log/httpd',
  $encrypt_admin_pass = "36C36F605650D9B560A7206EAB85C03130F95EFD",
  $decrypt_admin_pass = "installpass",
  $allowed_ips = "",
  $blocked_ips = "",
) {

  include apache
  include apache::mod::proxy_http
  include common
  include common::deploy_dir
  include deployment
  include haveged
  include java
  include coldfusion::install
  include newrelic

  # validate apache_log_path
  # used in apache vhost for coldfusion::instance
  validate_absolute_path($apache_log_path)

  # create resources for all the coldfusion app's defined in hiera.
  $coldfusion_instances = hiera_hash('coldfusion_instances', undef)
  create_resources('coldfusion::instance', $coldfusion_instances)

  # Generate a list of all the app names on the server
  if $coldfusion_instances {
    $app_names = unique(regex(keys($coldfusion_instances), '(\D+)'))
    coldfusion::app { $app_names: }
  }

  #$atype = type($app_names)
  #notify { "App Names: $app_names - Type: $atype": }

  #  create_resources('coldfusion::app', $app_names)

  common::mkdir_p { $base_dir: }

  file { $base_dir:
    ensure  => directory,
    owner   => $user,
    group   => $group,
    mode    => '0755',
    require => Common::Mkdir_p[$base_dir],
  }

  file { "apache_cf_admin_block":
    ensure  => file,
    path    => "/etc/httpd/conf.d/cfadminblock.conf",
    content => template("coldfusion/cfadminblock.config.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File['httpd_vdir'],
    notify  => Service['httpd'],
  }

  $all_users = hiera_hash(users)
  $userdetails = $all_users['coldfusion']
  @common::mkuser { $user:
    uid           => $userdetails['uid'],
    comment       => $userdetails['comment'],
    home          => $userdetails['home'],
    shell         => $userdetails['shell'],
    managehome    => false,
    manage_dotssh => false,
  }

  file { "${base_dir}/newrelic":
    ensure  => directory,
    owner   => $user,
    group   => $group,
    mode    => '0755',
    require => File["$base_dir"],
  }

  if $apps_dir != $base_dir {

    common::mkdir_p { $apps_dir: }

    file { $apps_dir:
      ensure  => directory,
      owner   => $user,
      group   => $group,
      mode    => '0755',
      require => Common::Mkdir_p[$apps_dir],
    }
  }

  package { ['python','python-crypto','rhino','xmlstarlet']:
    ensure => installed,
  }

}
