#! /bin/bash

# --interactive denedik olmadi gibi
# sudo docker network create ntw1
# sudo docker network create ntw2

# sudo docker network  create -d ipvlan --internal ntw1
# sudo docker network  create -d ipvlan  ntw2

# sudo docker network  create -d ipvlan  ntw1
# sudo docker network  create -d ipvlan --internal ntw2

# sudo docker network create -d macvlan --internal ntw1
# sudo docker network create -d macvlan ntw2

# sudo docker network create -d macvlan ntw1
# sudo docker network create -d macvlan --internal ntw2

# sudo docker network create -d macvlan ntw1
# sudo docker network create -d macvlan ntw2

# sudo docker network create ntw1
# sudo docker network create --internal ntw2

sudo docker network create --internal ntw1
sudo docker network create ntw2
sudo docker network create ntw3


