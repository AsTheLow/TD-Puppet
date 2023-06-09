class apache_configuration::service {
  # Gestion du service Apache

  service { 'apache2':
    ensure => running,
    enable => true,
    require => Class['apache_configuration::config'],
  }
}
