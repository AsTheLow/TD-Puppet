class apache_configuration {
  # Définition des dépendances entre les classes
  Class['apache_configuration::params']~>Class['apache_configuration::config']~>Class['apache_configuration::install']~>Class['apache_configuration::service']
  
  # Inclusion des dépendances requises
  include apache_configuration::params
  include apache_configuration::config
  include apache_configuration::install
  include apache_configuration::service
}
