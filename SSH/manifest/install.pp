class ssh_configuration::install {
  # Installation des paquets requis
  package { 'openssh-server':
    ensure => installed,
  }
}
