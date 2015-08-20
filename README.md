#Dockerfile : stunnel inside Docker 

This repository contains **Dockerfile** of [Stunnel](https://www.stunnel.org/) installed through RPM. The base Docker used is Centos:6, it can be changed to use Centos:7.


### Installation

1. Install [Docker](https://www.docker.com/).

2. Replacor or edit stunnel configuration files

   Replace stunnel.pem with actual certificate.

   Edit stunnel.conf file  for required stunnel configuration.

3. Build an image from Dockerfile: `docker build -t stunnel-docker-service`

4. After successfull build, run the below command to know stunnel-docker-service Image Id.

   docker images | grep "stunnel-docker-service"


### Usage
    Run Stunnel docker service by specifying image Id 


    docker run -d <image-id> --name=stunnel-service-one


### Verrify
    docker ps -a | grep "stunnel-service-one"

    docker logs <container-id>>
