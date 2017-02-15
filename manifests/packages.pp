# useful barbecue packages
class barbecue::packages {
  package{['duply', 'supernal', 'fasd']:
    ensure  => present,
    require => [Apt::Source['barbecue'], Class['apt::update']]
  }
}
