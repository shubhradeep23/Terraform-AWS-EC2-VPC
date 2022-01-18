#! /bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

# install docker community edition
sudo apt-cache policy docker-ce
sudo apt-get install -y docker-ce

# pull nginx image
sudo docker pull nginx:latest

# run container with port mapping - host:container
sudo docker run -d -p 80:80 --name nginx nginx
