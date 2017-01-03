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
    $repo_url = 'https://celestial-ops.com/barbecue'
    $key_id = '42ED3C30B8C9F76BC85AC1EC8B095396E29035F0'
    $key_server = 'http://keyserver.ubuntu.com:11371/pks'
    $key_url = "${key_server}/lookup?op=get&fingerprint=on&search=0x8B095396E29035F0"

    apt::key {'celestial':
      id     => $key_id,
      source => $key_url
    } ->

    apt::source { 'barbecue':
      location => $repo_url,
      release  => 'xenial',
      repos    => 'main',
      key      => {
        id     => $key_id,
        source => $key_url
      },
      include  => {
        src => false
      },
    }
  }
}
