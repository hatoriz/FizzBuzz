pipeline {
    agent { dockerfile true }

    stages {  
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn'
            }
        }
      
    }
}