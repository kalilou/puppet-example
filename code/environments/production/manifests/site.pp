node 'jenkins-server' {

	include jenkins_install
	include common_packages
}

node default {}
