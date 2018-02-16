node default {
  file {'/root/README':
  ensure => file,
  }
node 'master.puppet.local' {
  include role::master_server
  }
