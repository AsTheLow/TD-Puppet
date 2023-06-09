class ssh_configuration::params {
  # Définition des paramètres pertinents pour l'installation des paquets requis
  if $::virtual == 'physical' {
    $sshd_port = 23
  } else {
    $sshd_port = 24
  }
}
