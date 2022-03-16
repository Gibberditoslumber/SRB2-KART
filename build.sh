#!/bin/bash

until [[ ${ANSWER,,} == "32bit" ]] || [[ ${ANSWER,,} == "64bit" ]]; do
        read -p "if you're pc is 64 or 32 bit if 64 bit then type 64bit if 32 bit then type 32bit " ANSWER
done

if [[ ${ANSWER,,} == "64bit" ]]; then
sudo apt-get install build-essential libpng-dev zlib1g-dev libsdl2-dev libsdl2-mixer-dev libgme-dev libcurl4-openssl-dev && git clone https://github.com/STJr/Kart-Public.git && cd Kart-Public && make -C src/ LINUX64=1
else
        sudo apt-get install build-essential libpng-dev zlib1g-dev libsdl2-dev libsdl2-mixer-dev libgme-dev libopenmpt-dev libcurl4-openssl-dev nasm && git clone https://github.com/STJr/Kart-Public.git && cd Kart-Public && make -C src/ LINUX=1          
fi
echo Thanks For Using My Script (-:
