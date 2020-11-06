FROM jenkins/jenkins:lts

USER root

RUN apt-get update
RUN apt-get install -y wget curl nodejs nginx

COPY nginx.conf /etc/nginx/nginx.conf

#RUN service nginx restart

USER jenkins

VOLUME /var/jenkins_home
WORKDIR /var/jenkins_home

# Skip setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false -Xmx8192m -DhandlerCountMax=300

# Copy the default user script into the jenkins script startup folder
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/
COPY disable-setup.groovy /usr/share/jenkins/ref/init.groovy.d/

COPY jenkins.yml /var/jenkins_home/jenkins.yaml

RUN jenkins-plugin-cli --plugins github-branch-source dashboard-view workflow-aggregator pipeline-aggregator-view configuration-as-code blueocean



USER root