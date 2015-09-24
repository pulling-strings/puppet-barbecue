# useful barbecue packages
class barbecue::packages {

  Class['apt::update'] -> Package<| |>

  Apt::Source['barbecue'] ->

  package{['duply', 'nvm', 'supernal', 'fasd']:
    ensure  => present
  }
}
