sudo docker rm --force test
sudo docker rmi --force test
sudo docker build --tag test .

sudo docker run --name test -i -t --env-file environment_credentials -p 8080:80 test bash
#sudo docker run -p 8080:8080 --name=test -d --env JAVA_OPTS="-Xmx8192m" --env JENKINS_OPTS=" --handlerCountMax=300 --jenkins.install.runSetupWizard=false" --env JENKINS_USER="admin" --env JENKINS_PASS="password" test