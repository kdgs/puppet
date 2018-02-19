node default {
  }
node 'master.puppet.local' {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => "Bem vindo ao ${fqdn}\n",
  }
}

node 'mc.puppet.local' {
  include role::minecraft_server
}

node /^web/ {
  include role::app_server
  }
node /^db/ {
  include role::db_server
}
