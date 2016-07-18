class install_postgres {

    # Remove the repo if it is already install
    package { 'pgdg-centos95-9.5-2.noarch':
      ensure  => absent
    }

    # Install postgresql repository package, this is the same as the one above
    exec { 'Install postgresql repository package':
      command    => 'yum install -y http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm',
      path       => ['/bin', '/usr/bin'],
      user       => 'root'
    }

    # Install some required PostgreSQL RPM Packages
    package { 'postgresql95.x86_64':
      ensure => installed,
    }

    package { 'postgresql95-devel.x86_64':
      ensure => installed,
    }

    package { 'postgresql95-server.x86_64':
      ensure => installed,
    }



    # Initialize the postgresql db cluster
    # This is only ran once,
    # so we have to check if the file postgresql.conf exist
    exec { 'Initialize the postgresql db cluster':
      command    => '/usr/pgsql-9.5/bin/postgresql95-setup initdb',
      onlyif     => "test ! -f /var/lib/pgsql/9.5/data/postgresql.conf",
      path       => ['/bin', '/usr/bin'],
      user       => "root",
      group      => "root",
      logoutput  => on_failure
    }

    # Restart PostgreSQL server
    service { 'postgresql-9.5':
      ensure => 'running',
      enable => true
    }
  }
