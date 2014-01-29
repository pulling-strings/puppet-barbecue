# useful barbecue packages
class barbecue::packages {

  apt::source['barbecue'] ->

  package{'supernal':
    ensure  => present
  }
}
