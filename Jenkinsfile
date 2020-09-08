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
               
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
        }
    }
}
