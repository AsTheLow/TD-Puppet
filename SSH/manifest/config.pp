class ssh_configuration::config {
  case $operatingsystem {
    'Ubuntu', 'CentOS': {
      # Managing SSH configuration file using a template
      file { '/etc/ssh/sshd_config':
        ensure  => file,
        content => template('ssh_configuration/sshd_config.erb'),
        require => Class['ssh_configuration::install'],
        notify  => Class['ssh_configuration::service'],
      }
    }
    default: {
      fail("Unsupported operating system: ${operatingsystem}. Only CentOS and Ubuntu are supported.")
    }
  }
}
