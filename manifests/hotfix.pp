define coldfusion::hotfix (
  $cfwar_path="cfusion.ear/cfusion.war"
) {
  include common
  include coldfusion

  $instancename = $name
  if $instancename == 'cfusion' {
    $servicename = 'coldfusion9multi'
  } else {
    $servicename = $instancename
  }
  $instance_dir="${coldfusion::apps_dir}/${instancename}"

  file { "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/updates/":
    ensure  => directory,
    recurse => true,
    purge   => true,
    owner   => $coldfusion::user,
    group   => $coldfusion::group,
    mode    => '0751',
    path    => "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/updates/",
    source  => "puppet:///modules/coldfusion/hotfix/updates/",
    notify  => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/administrator/Application.cfm":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/administrator/Application.cfm",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/administrator/Application.cfm",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/administrator/security/cfrdspassword.cfm":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/administrator/security/cfrdspassword.cfm",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/administrator/security/cfrdspassword.cfm",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/administrator/security/_cffunctionsoptions.cfm":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/administrator/security/_cffunctionsoptions.cfm",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/administrator/security/_cffunctionsoptions.cfm",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/administrator/scheduler/scheduleedit.cfm":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/administrator/scheduler/scheduleedit.cfm",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/administrator/scheduler/scheduleedit.cfm",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/componentutils/cfcexplorer.cfc":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/componentutils/cfcexplorer.cfc",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/componentutils/cfcexplorer.cfc",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/componentutils/Application.cfm":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/componentutils/Application.cfm",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/componentutils/Application.cfm",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/adminapi/administrator.cfc":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/adminapi/administrator.cfc",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/adminapi/administrator.cfc",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/adminapi/security.cfc":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/adminapi/security.cfc",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/adminapi/security.cfc",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/ext/map/mapiconmaker.js":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/ext/map/mapiconmaker.js",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/scripts/ajax/ext/map/mapiconmaker.js",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/ext/map/GMapPanel3.js":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/ext/map/GMapPanel3.js",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/scripts/ajax/ext/map/GMapPanel3.js",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/package/cfmap.js":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/package/cfmap.js",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/scripts/ajax/package/cfmap.js",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/package/cflayout.js":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/package/cflayout.js",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/scripts/ajax/package/cflayout.js",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/resources/cf/map/":
    ensure    => directory,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/resources/cf/map/",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/resources/cf/map/marker.png":
    ensure    => file,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/CFIDE/scripts/ajax/resources/cf/map/marker.png",
    source    => "puppet:///modules/coldfusion/hotfix/CFIDE/scripts/ajax/resources/cf/map/marker.png",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6https.jar":
    ensure    => directory,
    recurse   => remote,
    purge     => false,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6core.jar",
    source    => "puppet:///modules/coldfusion/hotfix/lib/ib6core.jar",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/updates/chf9020001.jar":
    ensure    => directory,
    recurse   => remote,
    purge     => false,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/updates/chf9020001.jar",
    source    => "puppet:///modules/coldfusion/hotfix/lib/updates/chf9020001.jar",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6http.jar":
    ensure    => directory,
    recurse   => remote,
    purge     => false,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6http.jar",
    source    => "puppet:///modules/coldfusion/hotfix/lib/ib6http.jar",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6util.jar":
    ensure    => directory,
    recurse   => remote,
    purge     => false,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6util.jar",
    source    => "puppet:///modules/coldfusion/hotfix/lib/ib6util.jar",
    notify    => Service[$servicename],
  }

  file { "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6swing.jar":
    ensure    => directory,
    recurse   => remote,
    purge     => false,
    owner     => $coldfusion::user,
    group     => $coldfusion::group,
    path      => "${instance_dir}/${cfwar_path}/WEB-INF/cfusion/lib/ib6swing.jar",
    source    => "puppet:///modules/coldfusion/hotfix/lib/ib6swing.jar",
    notify    => Service[$servicename],
  }
}
