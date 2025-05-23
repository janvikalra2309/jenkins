pipeline {
    agent any // Step 1: Use any available Jenkins agent

    stages {

        // Step 2: Begin stages block

        stage('Clone Repository') { // Step 3: Clone GitHub repository
            steps {
                echo 'Cloning repository...'
                git 'https://github.com/janvikalra2309/jenkins.git'
            }
        }

        stage('Set Permissions') { // Step 4: Make the build script executable
            steps {
                echo 'Setting execute permissions for build.sh'
                sh 'chmod +x build.sh'
            }
        }

        stage('Compile Java Code') { // Step 5: Compile Java source file
            steps {
                echo 'Compiling Java code...'
                sh './build.sh compile'
            }
        }

        stage('Run Application') { // Step 6: Run compiled Java application
            steps {
                echo 'Running Java application...'
                sh './build.sh run'
            }
        }

        stage('Finish') { // Step 7: End of pipeline
            steps {
                echo 'Pipeline execution complete.'
            }
        }
    }
}