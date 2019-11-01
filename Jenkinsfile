pipeline{
        agent any
        stages{
            stage('Build Image'){
                steps{
                    sh "sudo docker build -t chaperoo ."
                }
            }
            stage('Clean'){
                steps{
                    sh label: '', script: '''if [ "$(sudo docker ps -aq -f name=chaptodo)" ]; then
                        sudo docker rm -f chaptodo
                    fi'''
                    }
                }
            stage('Run Container'){
                steps{
                    sh "sudo docker run -d --name chaptodo -p 80:80 chaperoo"
                }
            }
        }    
}
