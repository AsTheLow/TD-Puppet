class ntp::params {
  case $operatingsystem {
    'Ubuntu', 'CentOS': {
      $service_name = 'ntpd'
      $conf_file = 'ntp.conf.el'
    }
    default: {
      fail("Unsupported operating system: ${operatingsystem}")
    }
  }
}
