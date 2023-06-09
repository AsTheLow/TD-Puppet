class apache::service {
  service { $apache::params::service_name:
    ensure    => running,
    enable    => true,
    subscribe => File[$apache::params::config_file],
  }
}
