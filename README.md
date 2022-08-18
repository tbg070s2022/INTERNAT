# INTERNAT


## Genel

    cd nat-server
    ./delete_net.sh # onceden varsa
    ./create_net.sh

## NAT server

    cd nat-server
    ./build.sh

# NAT client

    cd nat-client
    ./build.sh

# Running

    cd nat-server
    ./run.sh
    ./connect1.sh
    ./connect2.sh
    # run ./start.sh in dockers

    cd nat-client
    ./create_setup_shs.sh
    
    ./run_interactive_1.sh
    # run /setup/setup.sh in docker
    ./run_interactive_2.sh
    # run /setup/setup.sh in docker
    /run_interactive_3.sh
    # run /setup/setup.sh in docker



