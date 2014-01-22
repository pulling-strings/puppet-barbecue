# useful barbecue packages
class barbecue::packages {

  package{'scm_breeze':
    ensure  => present
  }

  package{'supernal':
    ensure  => present
  }
}
