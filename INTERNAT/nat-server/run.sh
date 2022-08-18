#! /bin/bash
sudo docker rm nat1
sudo docker rm nat2

sudo docker run -d --privileged --name nat1 nat-server
sudo docker network connect ntw1 nat1 
sudo docker network connect ntw2 nat1

sudo docker run -d --privileged --name nat2 nat-server
sudo docker network connect ntw1 nat2 
sudo docker network connect ntw3 nat2

