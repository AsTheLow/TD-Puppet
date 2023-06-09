class apache_configuration::install {
  # Installation des paquets requis
  package { 'apache2':
    ensure => installed,
  }
}
