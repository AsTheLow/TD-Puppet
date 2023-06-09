class ssh_configuration::service {
  # Gestion du service SSH

  service { 'ssh':
    ensure => running,
    enable => true,
    require => Class['ssh_configuration::config'],
  }
}
