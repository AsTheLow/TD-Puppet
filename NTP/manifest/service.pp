class ntp::service {
  service { $ntp::params::service_name:
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/ntp.conf'],
  }
}
