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
                // sh 'curl -s --upload-file target/*.war "http://qadeploy:qadeploy@3.128.76.233:9090/manager/text/deploy?path=/appwebcalculator&update=true"'
                
                withCredentails([
					usernamePassword(credentials: ‘QA-TOMCAT-ID’, usernameVariable: USER, passwordVariable: PWD)
				    ])

                sh ' curl -s --upload-file target/*.war "http://"$USER":"$PWD"@3.128.76.233:9090/manager/text/deploy?path=/myapp&update=true" '
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
        }
    }
}
