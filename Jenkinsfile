pipeline {
	agent any
    			stages {
        			stage('Checkout') {
            				steps {
					sh "rm -rf /home/jenkins/workspace/pipe1/hello-world-war"	
               				 sh "git clone https://github.com/sumak27396/hello-world-war.git"
            					}
       					 }
				stage('Build') {
            				steps {
               				 sh "mvn clean package"
            					}
       					 }
				stage('Deploy') {
            				steps {
						sh "pwd"
						sh "ls"
						sh "whoami"
               				 sh "cp /home/jenkins/workspace/pipe1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.62/webapps/"
            					}
       					 }
   				 }
		}
