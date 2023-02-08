#!/bin/bash

cd /root

docker volume create jenkins_home

git clone https://github.com/softservedata/devopsjen.git

cp -R devopsjen/.jenkins/* /var/lib/docker/volumes/jenkins_home/_data

sleep 2

chown -R ubuntu:ubuntu /var/lib/docker/volumes/jenkins_home

cd devopsjen

docker build -t alpinejenkins .

echo build
docker run --rm --detach --name jenkins_server -p 8080:8080 -v jenkins_home:/root/.jenkins alpinejenkins
echo done
