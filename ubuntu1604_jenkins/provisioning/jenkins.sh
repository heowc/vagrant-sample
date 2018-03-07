#!/usr/bin/env bash
echo '============================ JENKINS SETTING ============================'

JENKINS_VERSION=$1

sudo wget http://mirrors.jenkins.io/war-stable/${JENKINS_VERSION}/jenkins.war
sudo nohup java -jar jenkins.war --httpPort=8080

sleep 10

echo `sudo cat /root/.jenkins/secrets/initialAdminPassword`
