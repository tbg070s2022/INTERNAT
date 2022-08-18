#! /bin/bash

sudo docker run -v${PWD}/setup2:/setup -it --rm --privileged --network ntw2 --name client2 nat-client /bin/bash

