class apache::config {
  case $operatingsystem {
    'Ubuntu', 'CentOS': {
      file { '/etc/apache2/apache2.conf':
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('apache/default.conf.erb'),
        notify  => Service['apache2'],
      }
    }
    default: {
      fail("Unsupported operating system: ${operatingsystem}. Only Ubuntu and CentOS are supported.")
    }
  }
}

class apache_configuration::config {
  # Gestion du fichier de configuration Apache en utilisant un template
  
  file { '/etc/apache2/sites-available/000-default.conf':
    ensure  => file,
    content => template('apache_configuration/000-default.conf.erb'),
    require => Class['apache_configuration::install'],
    notify  => Class['apache_configuration::service'],
  }
}
