# Class: profile::minecraft
#
#
class profile::minecraft {
  class {'minecraft':
    install_dir => '/srv/minecraft'
  }
}
