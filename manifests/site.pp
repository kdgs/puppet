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

node 'web.puppet.local' {
  include role::app_server
  include role::java
  }
node /^db/ {
  include role::db_server
}
