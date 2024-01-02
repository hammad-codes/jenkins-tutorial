pipeline{
    agent any
    environment{
        VERSION='1.3'
    }
    parameters {
        string(name: 'version', defaultValue: '1.3')
        choice(name: 'Blah', choices: ['1', '2', '3'])
        booleanParam(name: 'Test', defaultValue: true)
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
            when{
                expression{
                    params.Test == true
                }
            }
            steps{
                echo "testing..."
            }
        }
        stage("deploy"){
            steps{
                echo "deploying..."
                withCredentials([
                    usernamePassword(credentialsId:'server-credentials', usernameVariable:'USER',passwordVariable:'PASSWORD')
                ]){
                    echo "${USER} ${PASSWORD}"
                    echo "Deployed"
                    script{
                        sh "docker login -u ${USER} -p ${PASSWORD}"
                        sh "echo loggedIn"
                    }
                }
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