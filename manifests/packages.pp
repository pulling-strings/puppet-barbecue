# useful barbecue packages
class barbecue::packages {

  Apt::Source['barbecue'] ->

  package{['duply', 'nvm', 'supernal', 'fasd']:
    ensure  => present
  }
}
