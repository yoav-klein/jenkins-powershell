
/*****************************
    The point is to see if there's any differences 
    regarding to error checking, whether running an 
    inline script or running a script from a file

****************************/

pipeline {
    agent { label 'master' } 
    stages {
        stage('Run ps script') {
            steps {
                powershell script: './Script.ps1'
            }
        }
    }
}