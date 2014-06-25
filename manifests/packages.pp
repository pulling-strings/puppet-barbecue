# useful barbecue packages
class barbecue::packages {

  Apt::Source['barbecue'] ->

  package{'supernal':
    ensure  => present
  }
}
