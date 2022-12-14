# Create Jenkins Docker container

Create a bridge network
> `docker network create jenkins`{{execute}}

Create the following volumes
> `docker volume create jenkins-docker-certs`{{execute}}

> `docker volume create jenkins-data`{{execute}}

Download and run Docker image
> `docker run --name jenkins-docker --rm --detach   --privileged --network jenkins --network-alias docker   --env DOCKER_TLS_CERTDIR=/certs   --volume jenkins-docker-certs:/certs/client   --volume jenkins-data:/var/jenkins_home   --volume /root docker:dind`{{execute}}

Run image as a container in Docker
>  `docker container run --name jenkins-tutorial --rm --detach --network jenkins --env DOCKER_HOST=tcp://docker:2376   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1   --volume jenkins-data:/var/jenkins_home   --volume jenkins-docker-certs:/certs/client:ro   --volume /root  --publish 8080:8080 --publish 50000:50000 jenkinsci/blueocean`{{execute}}

Check containers are running
> `docker container ls`{{execute}}

Examine the Jenkins console log for the automatically-generated alphanumeric **password** (between the 2 sets of asterisks). Copy the password.
> `docker logs jenkins-tutorial`{{execute}}

Check access the to Jenkins container
> `docker container exec -it jenkins-tutorial bash`{{execute}}
 
> `exit`{{execute}}

<br/>
