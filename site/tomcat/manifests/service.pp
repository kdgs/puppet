class tomcat::service {
  service {'tomcat':
    ensure    => running,
    enable    => true,
    require  => Package['tomcat'],
  }

  service {'tomcat-webapps':
    ensure    => running,
    enable    => true,
    require  => Package['tomcat-webapps'],
  }
}
