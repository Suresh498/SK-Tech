node{
    stage('SCM checkout'){
        git 'https://github.com/Suresh498/gamutkart.git'
    }
    stage('build'){
        def mvnhome = tool name: 'Maven-3.6.0', type: 'maven'
        sh "${mvnhome}/bin/mvn clean package"
    }
    stage('Sonar Analysis'){
        
    }
    stage('Deploy2Tomcat'){
        sshagent(['tomcatserver']) {
            sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@172.31.31.174:/opt/apache-tomcat-8.5.37/webapps'
        }

    }
}
