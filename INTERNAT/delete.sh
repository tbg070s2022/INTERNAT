#!/bin/bash

sudo docker kill nat1 nat2 client1 client2 client3
sudo docker rm nat1 nat2 client1 client2 client3

sudo docker rmi nat-client nat-server

sudo docker network rm ntw1
sudo docker network rm ntw2
sudo docker network rm ntw3
