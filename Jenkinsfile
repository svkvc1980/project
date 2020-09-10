pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo '...........Building the WebCalculator Application.................'
                sh 'mvn clean compile package'
            }
        }
        stage('Test') {
            steps {
                echo '...........Running JUNIT testing on WebCalculator Application.................'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo '...........Deploying the WebCalculator Application to QA TOMCAT Server.................'
                
		//sh 'curl -s --upload-file target/*.war "http://qadeploy:qadeploy@3.129.11.26:8080/manager/text/deploy?path=/dlapp&update=true"'
                sh 'curl -s --upload-file target/*.war "http://proddeploy:proddeploy@18.217.135.255:8080/manager/text/deploy?path=/blapp&update=true"'
               
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
        }
    }
}
