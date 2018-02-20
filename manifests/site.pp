node default {
  notify {"Default Node Reached":
    message   => "\n\n\nConfiguração Padrão de Node\n\n\n"
  }
}
node 'master.puppet.local' {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => "Bem vindo ao ${fqdn}\n",
  }
  notify {"Master Node Reached":
    message   => "\n\n\nConfiguração do Node MASTER\n\n\n"
  }
}

node 'mc.puppet.local' {
  include role::minecraft_server
  notify {"Minecraft Server Node Reached":
    message   => "\n\n\nTeste de configuração do modulo Minecraft\n\n\n"
  }
}

node 'web.puppet.local' {
  include role::app_server
  include java::install
  include tomcat::install
  
  notify {"Web Node Reached":
    message   => "\n\n\nConfiguração do Node Web!!!!\nTestando instalação de pacotes Java e Tomcat.\n\n\n"
  }
  
}
node /^db/ {
  include role::db_server
  
  notify {"DB Node Reached":
    message   => "\n\n\nConfiguração do Node de Banco de Dados\n\n\n"
  }

}
