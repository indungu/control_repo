# Class: profile::ssh_server
#
#
class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDeMsXg1ZEII6HTvCZ8FYmTUqknJ96rBAAiK3ZTBzzp//3vOQ6hDFR5pa1EGTMu1F5jxdLP1aquVZjkDNHR9/H+GDOWJJwLuPnLi/Dfkp3xBi1cD3qmzk9hpg6iLHNAyj+EfA+n12IKrI/NdlaMz0GkdDaJ4c2jc7mtRgyfujx7YQAsrvhpmC5EwBS0DskWhcKcHS3i3bE9NB+Q0EPPhR43gTAZdFT5Cv1rQ1Llb84V5Iuz/GSwSSWJwBkqE8TxiYCyHFdU70VgWeKSCakKRusqV5vsykhw3GtNNjvWLW/K3dwGPVtyV/zaLzstHUofM8fYvUseAGNyqyf5thbFFGx/',
  }
}
