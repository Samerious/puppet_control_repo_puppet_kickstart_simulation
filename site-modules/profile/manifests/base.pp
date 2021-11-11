#the base profile should include component modules that will be on all nodes
class profile::base (
  String $hiera_message,
) {
  case $facts['os']['release']['full'] {
    '18.04': { include profile::bionic_1804 }
    '20.04': { include profile::focal_2004 }
    default: { fail("The Ubuntu version ${facts['os']['release']['full']} ") }
  }
  include ntp
  class {'puppet_agent':
    package_version => 'auto',
  }
}
