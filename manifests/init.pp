# == Class: barbecue
#
# Sets up the fpm barbecue repo
#
# === Examples
#
#  class { barbecue:  }
#
# === Authors
#
# Ronen Narkis <narkisr@gmail.com>
#
# === Copyright
#
# Copyright 2013 Ronen Narkis , unless otherwise noted.
#
class barbecue {
  if(!defined(Apt::Source['barbecue'])){
    $repo_url = 'https://raw.githubusercontent.com/narkisr/fpm-barbecue/repo/packages/ubuntu/'
    $key_id = '42ED3C30B8C9F76BC85AC1EC8B095396E29035F0'
    $key_server = 'keyserver.ubuntu.com'

    apt::key{'celestial':
      id     => $key_id,
      server => $key_server,
    }

    -> apt::source { 'barbecue':
      location => $repo_url,
      release  => 'xenial',
      repos    => 'main',
      key      => {
        id     => $key_id,
      },
      include  => {
        src => false
      },
    }
  }
}
