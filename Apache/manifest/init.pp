class ntp {
  include ntp::params
  include ntp::install
  include ntp::config
  include ntp::service
}
