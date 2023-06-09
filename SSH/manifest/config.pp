class ssh_configuration::config {
  # Gestion du fichier de configuration SSH en utilisant un template
  
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    content => template('ssh_configuration/sshd_config.erb'),
    require => Class['ssh_configuration::install'],
    notify  => Class['ssh_configuration::service'],
  }
}
