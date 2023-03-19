#!/bin/bash
repository="ghcr.io/softservedata/devopsjen:main"

cd /root
docker pull $repository
sleep 2
docker run --rm --detach --name jenkins_server -p 8080:8080 $repository
