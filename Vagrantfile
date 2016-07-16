# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


		config.vm.define :puppet_master do |puppet_master_config|
			puppet_master_config.vm.box = "centos/7"
			puppet_master_config.vm.hostname = "puppet"
			puppet_master_config.vm.network "private_network", ip: "192.168.50.200"
			puppet_master_config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
			puppet_master_config.vm.synced_folder "./code", "/etc/puppetlabs/code", :type => "nfs"
			puppet_master_config.ssh.forward_agent = true
			puppet_master_config.ssh.insert_key = false
			puppet_master_config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key" ]

			puppet_master_config.vm.provider "virtualbox" do |vb|
				vb.memory = 3333
			end

		end

		config.vm.define :jenkins_server do |jenkins_server_config|
			jenkins_server_config.vm.box = "centos/7"
			jenkins_server_config.vm.hostname = "jenkins-server"
			jenkins_server_config.vm.network "private_network", ip: "192.168.50.201"
			jenkins_server_config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
			jenkins_server_config.ssh.forward_agent = true
			jenkins_server_config.ssh.insert_key = false
			jenkins_server_config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key" ]

		end

		config.vm.define :build_server do |build_server_config|
			build_server_config.vm.box = "centos/7"
			build_server_config.vm.hostname = "build-server"
			build_server_config.vm.network "private_network", ip: "192.168.50.202"
			build_server_config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
			build_server_config.ssh.forward_agent = true
			build_server_config.ssh.insert_key = false
			build_server_config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key" ]
		end

		config.vm.define :postgres_server do |postgres_server_config|
			postgres_server_config.vm.box = "centos/7"
			postgres_server_config.vm.hostname = "postgresql-server"
			postgres_server_config.vm.network "private_network", ip: "192.168.50.203"
			postgres_server_config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
			postgres_server_config.ssh.forward_agent = true
			postgres_server_config.ssh.insert_key = false
			postgres_server_config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key" ]
		end

		config.vm.define :redis_server do |redis_server_config|
			redis_server_config.vm.box = "centos/7"
			redis_server_config.vm.hostname = "redis-server"
			redis_server_config.vm.network "private_network", ip: "192.168.50.204"
			redis_server_config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
			redis_server_config.ssh.forward_agent = true
			redis_server_config.ssh.insert_key = false
			redis_server_config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key" ]
		end

end
