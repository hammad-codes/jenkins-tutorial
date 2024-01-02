pipeline{
    agent any
    stages{
        stage("build"){
            steps{
                echo "building..."
            }

        }
        stage("test"){
            steps{
                echo "testing..."
            }
        }
        stage("deploy"){
            steps{
                echo "deploying..."
            }
        }
    }
    post{
        always{
            echo "post always"
        }
        success{
            echo "post success"
        }
        failure{
            echo "post failure"
        }
        unstable{
            echo "post unstable"
        }
    }
}