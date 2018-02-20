class profile::base {
  user {'admin':
    ensure  => present,
  }
  file { '/etc/ssh/sshd_config':
    ensure  => present,
   }->
  file_line { 'Append a line to /etc/ssh/sshd_config':
    notify  => Service['sshd'],
    path    => '/etc/ssh/sshd_config',  
    line    => 'Banner /etc/issue.net',
  }
  file {'/etc/issue.net':
    ensure  => file,
    source  => 'puppet:///modules/config_geral/issue.net',
  }
  file {'/etc/motd':
    ensure  => file,
    source  => 'puppet:///modules/config_geral/motd',
  }
  service { sshd:
    ensure  => running
  }
  package {['tree','wget','git','unzip','ntp']:
    ensure  => installed,
  }
  user { 'teste':
    ensure  => absent,
  }
  service { 'ntp':
    ensure  => running,
    enable  => true,
  }
}
