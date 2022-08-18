NAT1_IP=$(sudo docker inspect nat1 | jq '.[0].NetworkSettings.Networks.ntw1.IPAddress')
CLIENT1_IP=$(sudo docker network inspect ntw2  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $1"\""}')
#NETMASK1=$(sudo docker network inspect ntw1  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $2}' | awk -F'"' '{print $1}' | awk '{num=$1; mask=0; for (i=0; i<num; i++) {mask=or(mask,1); mask=lshift(mask, 1);} for (i=0; i<(31-num); ++i) {mask=lshift(mask, 1);} printf("%d.%d.%d.%d\n", rshift(and(mask, 0xff000000), 24), rshift(and(mask, 0xff0000), 16), rshift(and(mask, 0xff00), 8), and(mask, 0xff));}' )
mkdir -p setup1
echo route del default > setup1/setup.sh
echo route add -net $CLIENT1_IP netmask 255.255.0.0 gw $NAT1_IP eth0 >> setup1/setup.sh

NAT2_IP=$(sudo docker inspect nat1 | jq '.[0].NetworkSettings.Networks.ntw2.IPAddress')
CLIENT2_IP=$(sudo docker network inspect ntw1  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $1"\""}')
#NETMASK2=$(sudo docker network inspect ntw2  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $2}' | awk -F'"' '{print $1}' | awk '{num=$1; mask=0; for (i=0; i<num; i++) {mask=or(mask,1); mask=lshift(mask, 1);} for (i=0; i<(31-num); ++i) {mask=lshift(mask, 1);} printf("%d.%d.%d.%d\n", rshift(and(mask, 0xff000000), 24), rshift(and(mask, 0xff0000), 16), rshift(and(mask, 0xff00), 8), and(mask, 0xff));}' )
mkdir -p setup2
echo route del default > setup2/setup.sh
echo route add -net $CLIENT2_IP netmask 255.255.0.0 gw $NAT2_IP eth0 >> setup2/setup.sh
chmod +x setup2/setup.sh

NAT3_IP=$(sudo docker inspect nat2 | jq '.[0].NetworkSettings.Networks.ntw1.IPAddress')
CLIENT3_IP=$(sudo docker network inspect ntw3  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $1"\""}')
#NETMASK3=$(sudo docker network inspect ntw1  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $2}' | awk -F'"' '{print $1}' | awk '{num=$1; mask=0; for (i=0; i<num; i++) {mask=or(mask,1); mask=lshift(mask, 1);} for (i=0; i<(31-num); ++i) {mask=lshift(mask, 1);} printf("%d.%d.%d.%d\n", rshift(and(mask, 0xff000000), 24), rshift(and(mask, 0xff0000), 16), rshift(and(mask, 0xff00), 8), and(mask, 0xff));}' )
echo route add -net $CLIENT3_IP netmask 255.255.0.0 gw $NAT3_IP eth0 >> setup1/setup.sh
chmod +x setup1/setup.sh

NAT4_IP=$(sudo docker inspect nat2 | jq '.[0].NetworkSettings.Networks.ntw3.IPAddress')
CLIENT4_IP=$(sudo docker network inspect ntw1  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $1"\""}')
#NETMASK4=$(sudo docker network inspect ntw3  | jq '.[0].IPAM.Config[0].Subnet' | awk -F'/' '{print $2}' | awk -F'"' '{print $1}' | awk '{num=$1; mask=0; for (i=0; i<num; i++) {mask=or(mask,1); mask=lshift(mask, 1);} for (i=0; i<(31-num); ++i) {mask=lshift(mask, 1);} printf("%d.%d.%d.%d\n", rshift(and(mask, 0xff000000), 24), rshift(and(mask, 0xff0000), 16), rshift(and(mask, 0xff00), 8), and(mask, 0xff));}' )
mkdir -p setup3
echo route del default > setup3/setup.sh
echo route add -net $CLIENT4_IP netmask 255.255.0.0 gw $NAT4_IP eth0 >> setup3/setup.sh
chmod +x setup3/setup.sh


