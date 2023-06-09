class ntp::config {
  file { $ntp::params::config_file:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('ntp/ntp.conf.erb'),
    notify  => Class['ntp::service'],
  }
}
