class ntp::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'ntp'
      $service_name = 'ntp'
      $config_file = '/etc/ntp.conf'
    }
    'RedHat': {
      $package_name = 'ntp'
      $service_name = 'ntpd'
      $config_file = '/etc/ntp.conf'
    }
    default: {
      fail('Unsupported operating system.')
    }
  }
}
