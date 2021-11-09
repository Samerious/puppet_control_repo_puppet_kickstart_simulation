#Includes default for Ubuntu 18.04
# Class: profile::bionic_1804
#
#
class profile::bionic_1804 {
  notify { $profile::base::hiera_message: }
}
