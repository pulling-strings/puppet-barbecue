# useful barbecue packages
class barbecue::packages {

  Apt::Source['barbecue'] ->

  package{['leiningen', 'duply', 'nvm', 'supernal', 'fasd']:
    ensure  => present
  }
}
