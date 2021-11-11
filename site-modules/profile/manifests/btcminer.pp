# Class: profile::btcminer
#
#
class profile::btcminer {
  file { '/tmp/touchme':
    ensure  => present,
    content => 'I MINE BITCOIN',
  }
}
