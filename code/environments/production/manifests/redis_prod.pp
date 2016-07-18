class redis_install {

    class { 'redis':
      conf_port           => '6379',   # Port number
      conf_bind           => '0.0.0.0', # Network Interface
      service_enable      => true,      # Enable Redis at boot
      service_ensure      => 'running', # Make sure after installation, redis is running
    }
}

class install_redis_puppet_dsl {

    exec { 'Set SElinux to be permissive':
      command    => 'setenforce 0',
      path       => ['/sbin', '/usr/sbin'],
      user       => 'root'
    }

    package { 'epel-release':
      ensure  => installed
    }

    package { 'redis':
      ensure  => installed
    }

    service { 'redis':
      ensure => 'running',
      enable => true

    }
}
