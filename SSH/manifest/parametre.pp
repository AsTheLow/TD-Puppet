class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'apache2'
      $service_name = 'apache2'
      $config_file = '/etc/apache2/apache2.conf'
    }
    'RedHat': {
      $package_name = 'httpd'
      $service_name = 'httpd'
      $config_file = '/etc/httpd/conf/httpd.conf'
    }
    default: {
      fail('Unsupported operating system.')
    }
  }
}
