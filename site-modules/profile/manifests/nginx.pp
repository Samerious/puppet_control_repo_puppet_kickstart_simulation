# Class: profile::nginx
#
#
class profile::nginx () {
  class { 'nginx':
    www_root => '/opt/html/',
  }
}
