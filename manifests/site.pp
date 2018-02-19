node default {
  }
node 'master.puppet.local' {
  include role::master_server
  }

node /^web/ {
  include role::app_server
  }
node /^db/ {
  include role::db_server
}
