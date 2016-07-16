node 'jenkins-server', 'build-server' {
	file {'/tmp/example-ip':                                            # resource type file and filename
	  ensure  => present,                                               # make sure it exists
	  mode    => '0644',                                                # file permissions
	  content => "Here is my Public IP Address: ${ipaddress_eth0}.\n",  # note the ipaddress_eth0 fact
	}

	file {'/tmp/example-dns':                                            # resource type file and filename
	  ensure  => present,                                               # make sure it exists
	  mode    => '0644',                                                # file permissions
	  content => "Here is my Public IP Address: ${ipaddress_eth1}.\n",  # note the ipaddress_eth0 fact
	}
}

node default {}
