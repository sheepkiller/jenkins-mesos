#!/bin/sh

export JENKINS_PORT=${PORT:-8080}

if [ ! -d ${JENKINS_HOME} ]
then
  mkdir ${JENKINS_HOME}
  chown jenkins:jenkins ${JENKINS_HOME}
fi

JENKINS_OPTS="${JENKINS_OPTS_OPTS} --httpPort=${JENKINS_PORT}"

sudo -u jenkins -E java ${JAVA_OPTS} -jar ${JENKINS_WARDIR}/jenkins.war ${JENKINS_OPTS}
