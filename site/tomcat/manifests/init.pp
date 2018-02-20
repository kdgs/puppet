class tomcat {
  include java::install
  include tomcat::install
  include tomcat::service
}
