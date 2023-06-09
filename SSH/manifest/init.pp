class ssh {
  $operatingsystem = $facts['operatingsystem']
  $osfamily = $facts['osfamily']

  if !($osfamily == 'Debian' or $osfamily == 'RedHat')
    fail("Le système d'exploitation n'est pas compatible. Seuls Ubuntu et CentOS sont pris en charge.")
  end

  if $osfamily == 'Debian' {
    if !($operatingsystem == 'Ubuntu')
      fail("Le système d'exploitation n'est pas compatible. Seule Ubuntu est prise en charge sous Debian.")
    end
  }

  if $osfamily == 'RedHat' {
    if !($operatingsystem == 'CentOS')
      fail("Le système d'exploitation n'est pas compatible. Seule CentOS est prise en charge sous RedHat.")
    end
  }

  # Le reste du code du module SSH
}

class apache {
  include apache::params
  include apache::install
  include apache::config
  include apache::service
}
