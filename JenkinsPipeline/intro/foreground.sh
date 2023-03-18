#!/bin/bash
stty -echo
echo -n "Starting Jenkins "
while [ ! "$(docker ps -a -q -f name=jenkins_server)" ]; do sleep 2; echo -n ". "; done
echo "installed"
echo "Jenkins is up and running"
stty echo
