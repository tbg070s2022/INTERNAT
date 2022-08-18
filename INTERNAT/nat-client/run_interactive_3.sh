#! /bin/bash

sudo docker run -v${PWD}/setup3:/setup -it --rm --privileged --network ntw3 --name client3 nat-client /bin/bash