node 'jenkins-server' {

	# install the common packages
	include common_packages

	# Install Jenkins server and some plugin
	include jenkins_install
}

node 'build-server' {

	# install the common packages
	include common_packages
}

node 'postgresql-server' {

	# install the common packages
	include common_packages

	# Install and configure postgresql
	include install_postgres
}

node 'redis-server' {

	# install the common packages
	include common_packages

	# Install and configure redis server
	# include redis_install

	# Install and configure puppet using only puppet resources
	include install_redis_puppet_dsl
}

# This catalog will be compiled and send to the puppet agent machine
# For example when we run puppet agent --test on the jenkins-server
# only the code block under node 'jenkins-server' will be executed.
