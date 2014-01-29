define coldfusion::svn_dir (
  $branch = "trunk",
  $instance_svn_dir = $title,
  $instance_dir,
  $instancename,
  $app_name,
) {

  #$somevar = delete($instance_svn_dir, "${instancename}_")
  $svn_path = regsubst($instance_svn_dir, "^(${instancename}_)(.*)", '\2')
  # SVN source
  $svn_source = "${appsvn::protocol}://${appsvn::user}@${appsvn::server}${appsvn::base_path}/${app_name}/${branch}"

  $remote_svn_dir = "${svn_source}/${svn_path}"
  $local_svn_dir = "${instance_dir}/${svn_path}"

  vcsrepo { "$local_svn_dir":
    ensure   => present,
    provider => svn,
    source   => $remote_svn_dir,
  }

  file { "$local_svn_dir":
    ensure  => directory,
    owner   => $coldfusion::user,
    group   => $coldfusion::group,
    #recurse => true,
    #mode    => '0751',
    require => Vcsrepo[$local_svn_dir],
    notify  => Service[$instancename],
  }

  exec { "${local_svn_dir}_ensure_branch":
    command => "svn switch --non-interactive ${svn_source}",
    unless  => "svn info --non-interactive | grep ^URL: | awk  \'{print \$2}\' | grep ${svn_source}",
    cwd     => $local_svn_dir,
    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
    require => Vcsrepo[$local_svn_dir],
    notify  => Service[$instancename],
  }
}
