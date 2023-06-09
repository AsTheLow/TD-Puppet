ntp_server {
  $operatingsystem = $facts['operatingsystem']
  $osfamily = $facts['osfamily']

  if !($osfamily == 'Debian' or $osfamily == 'RedHat') {
    fail("Le système d'exploitation n'est pas compatible. Seuls Debian et RedHat sont pris en charge.")
  }

  if $osfamily == 'Debian' {
    if !($operatingsystem == 'Ubuntu') {
      fail("Le système d'exploitation n'est pas compatible. Seule Ubuntu est prise en charge sous Debian.")
    }
  }

  if $osfamily == 'RedHat' {
    if !($operatingsystem == 'CentOS') {
      fail("Le système d'exploitation n'est pas compatible. Seule CentOS est prise en charge sous RedHat.")
    }
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('ntp_server/ntp.conf.erb'),
    notify  => Service['ntp'],
  }

  service { 'ntp':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/ntp.conf'],
  }
}
