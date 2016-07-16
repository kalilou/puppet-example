class common_packages {

	package { 'vim':
      ensure  => installed,
    }

    package { 'wget':
      ensure => installed,
    }

    package { 'net-tools':
    	ensure => installed,
    }
}
