class ssh_configuration {
  # Définition des dépendances entre les classes
  Class['ssh_configuration::params']~>Class['ssh_configuration::config']~>Class['ssh_configuration::install']~>Class['ssh_configuration::service']
  
  # Inclusion des dépendances requises
  include ssh_configuration::params
  include ssh_configuration::config
  include ssh_configuration::install
  include ssh_configuration::service
}
