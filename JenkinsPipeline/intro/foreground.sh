#!/bin/bash

stty -echo

while [ ! "$(docker ps -a -q -f name=jenkins_server)" ]; do sleep 2; echo -n "."; done

echo "Jenkins is up and running"
