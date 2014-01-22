# useful barbecue packages
class barbecue::packages {

  package{'scm-breeze':
    ensure  => present
  }

  package{'supernal':
    ensure  => present
  }
}
