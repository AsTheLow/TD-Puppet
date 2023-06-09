class apache_configuration::config {
  # Gestion du fichier de configuration Apache en utilisant un template
  
  file { '/etc/apache2/sites-available/000-default.conf':
    ensure  => file,
    content => template('apache_configuration/000-default.conf.erb'),
    require => Class['apache_configuration::install'],
    notify  => Class['apache_configuration::service'],
  }
}
