class ssh::install {
  case $operatingsystem {
    'Ubuntu', 'CentOS': {
      package { 'openssh-server':
        ensure => installed,
      }
    }
    default: {
      fail("Unsupported operating system: ${operatingsystem}. Only CentOS and Ubuntu are supported.")
    }
  }
}
