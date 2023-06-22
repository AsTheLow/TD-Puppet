class ssh::config {
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    content => template('ssh/sshd_config.erb'),
    require => Class['ssh::install'],
    notify  => Class['ssh::service'],
  }
}
