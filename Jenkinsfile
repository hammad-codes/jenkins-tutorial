pipeline{
    agent any
    environment{
        VERSION='1.3'
    }
    parameters{
        string(name: 'version', defaultValue='1.3', description='...')
        choice(name: 'Blah', choices: ['1', '2', '3'], description: '...')
        booleanParam(name: 'Test',defaultValue=true,description='...')
    }
    stages{
        stage("build"){
            when{
                expression{
                    BRANCH_NAME == "main"
                }
            }
            steps{
                echo "building with version ${VERSION}"
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