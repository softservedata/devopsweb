#!/bin/bash
cd /root

docker pull ghcr.io/softservedata/devopsjen:main
sleep 2
docker run --rm --detach --name jenkins_server -p 8080:8080 -v jenkins_home:/root/.jenkins ghcr.io/softservedata/devopsjen:main

#docker volume create jenkins_home
#git clone https://github.com/softservedata/devopsjen.git
#cp -R devopsjen/.jenkins/* /var/lib/docker/volumes/jenkins_home/_data
#sleep 2
#chown -R ubuntu:ubuntu /var/lib/docker/volumes/jenkins_home
#cd devopsjen
#docker build -t alpinejenkins .
#docker run --rm --detach --name jenkins_server -p 8080:8080 -v jenkins_home:/root/.jenkins alpinejenkins
