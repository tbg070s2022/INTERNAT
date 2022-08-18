#! /bin/bash

sudo docker run -v${PWD}/setup1:/setup -it --rm --privileged --network ntw1 --name client1 nat-client /bin/bash


