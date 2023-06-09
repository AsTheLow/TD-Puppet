class apache::install {
  package { $apache::params::package_name:
    ensure => installed,
  }
}
