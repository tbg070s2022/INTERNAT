route del default
route add -net "172.19.0.0" netmask 255.255.0.0 gw "172.18.0.2" eth0
route add -net "172.20.0.0" netmask 255.255.0.0 gw "172.18.0.3" eth0
