# Create Jenkins Docker container

Create a bridge network
> `docker network create jenkins`{{execute}}

Create the following volumes
> `docker volume create jenkins-docker-certs`{{execute}}

> `docker volume create jenkins-data`{{execute}}

Run image as a container in Docker
>  `docker container run --name jenkins-pipeline --rm --detach --network jenkins -p 8080:8080 -p 50000:50000 --restart=on-failure --volume jenkins-data:/var/jenkins_home --volume jenkins-docker-certs:/certs/client:ro --volume /root jenkins/jenkins:lts-jdk11`{{execute}}


Check containers are running
> `docker container ls`{{execute}}

Check access the to Jenkins container
> `docker container exec -it jenkins-tutorial bash`{{execute}}
 
> `exit`{{execute}}

<br/>
