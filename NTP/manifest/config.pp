class ntp::config {
  file { '/etc/ntp.conf':
    ensure  => present,
    source  => 'puppet:///modules/ntp/ntp.conf',
    require => Class['ntp::install'],
    notify  => Class['ntp::service'],
  }
}
