class apache::config {
  file { $apache::params::config_file:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('apache/apache.conf.erb'),
    notify  => Class['apache::service'],
  }
}
