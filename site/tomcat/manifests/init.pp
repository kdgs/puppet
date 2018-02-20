class tomcat {
  include java::install
  include tomcat::install
  include tomcat::config
  include tomcat::service
}
