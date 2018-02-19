node default {
  }
node 'master.puppet.local' {
  include role::master_server
  }
