service {'tomcat':
  ensure    => running,
  enable    => true,
  requires  => Package['tomcat'],
}

service {'tomcat-webapps':
  ensure    => running,
  enable    => true,
  requires  => Package['tomcat-webapps'],
}
