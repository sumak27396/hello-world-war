pipeline {
	agent { label 'slave' }
    			stages {
        			stage('Checkout') {
            				steps {
					sh "rm -rf /home/slave/workspace/pipe1/hello-world-war"	
               				 sh "git clone  https://github.com/sumak27396/hello-world-war.git"
            					}
       					 }
				stage('Build') {
            				steps {
               				 sh "cd hello-world-war"
						sh "docker build -t sumakeshava/war:1.0 ."
            					}
       					 }
				stage('publish') {
					steps {
						sh "docker login -u sumakeshava -p Sumakeshava03'\$'"
						sh "docker push sumakeshava/war:1.0"
					}
				}
				/*stage('Deploy') {
            				steps {
						sh "pwd"
						sh "ls"
						sh "whoami"
               				 sh "cp /home/slave/workspace/pipe1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.63/webapps/"
            					}
       					 }*/
   				 }
		}
