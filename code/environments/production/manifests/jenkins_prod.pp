
class jenkins_install {

 	include jenkins

    jenkins::user { 'vagrant':
       email    => 'vagrant@example.com',
       password => 'vagrant',
     }


    jenkins::plugin {
    	'git': version => 'lastest'
    }

    jenkins::plugin {
    	'maven-plugin': version => 'lastest'
    }

    jenkins::plugin {
    	'git-client': version => 'lastest'
    }

    jenkins::plugin {
    	'git-server': version => 'lastest'
    }

    jenkins::plugin {
    	'ssh-slaves': version => 'lastest'
    }

    jenkins::plugin {
    	'javadoc': version => 'lastest'
    }

    jenkins::plugin {
    	'mailer': version => 'lastest'
    }

    jenkins::plugin {
    	'swarm': version => 'lastest'
    }

    jenkins::plugin {
    	'junit': version => 'lastest'
    }

    jenkins::plugin {
    	'ghprb': version => 'lastest'
    }

    jenkins::plugin {
    	'ldap': version => 'lastest'
    }

    jenkins::plugin {
    	'cvs': version => 'lastest'
    }

    jenkins::plugin {
    	'ssh-credentials': version => 'lastest'
    }

    jenkins::plugin {
    	'dashboard-view': version => 'lastest'
    }

    jenkins::plugin {
    	'durable-task': version => 'lastest'
    }

     jenkins::plugin {
    	'external-monitor-job': version => 'lastest'
    }

     jenkins::plugin {
    	'plain-credentials': version => 'lastest'
    }

     jenkins::plugin {
    	'publish-over-ssh': version => 'lastest'
    }
}
