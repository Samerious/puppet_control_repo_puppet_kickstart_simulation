# Class: ethminer
#
#
class profile::ethminer {
  package { 'vlc':
    ensure => 'present'
  }
}
