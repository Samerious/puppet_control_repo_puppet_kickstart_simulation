# Class: profile::miner
#
#
class profile::miner {
  case $trusted['extensions']['pp_application'] {
    'ethminer': { include profile::ethminer }
    default: { include profile::btcminer }
  }
}
