class ssh::service {
  case $operatingsystem {
    'Ubuntu': {
      service { 'ssh':
        ensure  => 'running',
        enable  => true,
        require => Class['ssh::config'],
      }
    }
    'CentOS': {
      service { 'sshd':
        ensure  => 'running',
        enable  => true,
        require => Class['ssh::config'],
      }
    }
    default: {
      fail("Unsupported operating system: ${operatingsystem}. Only CentOS and Ubuntu are supported.")
    }
  }
}
