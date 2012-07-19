#!/usr/bin/bash

# Host address to listen on. Defaults to 0.0.0.0.
HTTP_HOST="0.0.0.0"
# Port to listen on. Defaults to 8080.
HTTP_PORT="8080"

export JENKINS_HOME=/opt/jenkins/workspace
java -jar /opt/jenkins/jenkins.war --prefix=/jenkins --httpListenAddress=$HTTP_HOST --httpPort=$HTTP_PORT --argumentsRealm.roles.jenkins=admin --argumentsRealm.passwd.jenkins=j3nk1ns

