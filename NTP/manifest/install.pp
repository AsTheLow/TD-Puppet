class ntp::install {
  case $operatingsystem {
    'Ubuntu': {
      package { 'ntp':
        ensure => installed,
      }
    }
    'CentOS': {
      package { 'ntp':
        ensure => installed,
        name   => 'ntp-package',
      }
    }
    default: {
      fail("Unsupported operating system: ${operatingsystem}")
    }
  }
}
