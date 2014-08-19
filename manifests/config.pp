class pacemaker::config {

  file { '/etc/sysconf/pcsd' :
    ensure  => present,
    content => template('pacemaker/etc/sysconfig/pcsd.erb'),
    notify  => Class['pacemaker::service'],
  }

}
