class profile::base {
  user {'admin':
    ensure => present,
  }
  file { '/etc/ssh/sshd_config':
    ensure => present,
   }->
  file_line { 'Append a line to /etc/ssh/sshd_config':
    path => '/etc/ssh/sshd_config',  
    line => 'Banner /etc/issue.net',
  }
}
