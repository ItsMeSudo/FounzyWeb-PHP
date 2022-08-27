#!/bin/bash
#FounzyWeb-PHP server  &&&& Ubuntu
#SUDO                 2022              SERVERHU.EU

cd /root && \
    apt install -y nginx unzip wget curl git && \
    apt install -y software-properties-common curl apt-transport-https ca-certificates gnupg && \
    LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php && \
    apt update -y && \
    apt -y install php8.0 php8.0-{common,cli,gd,mbstring,bcmath,xml,fpm,curl,zip,mysql} tar unzip git && \
    mkdir -p /tmp/sudo && \
    cd /root/FounzyWeb-PHP && \
    sed -i 's/\r//' /root/FounzyWeb-PHP/gitclone && \
    sed -i 's/\r//' /root/FounzyWeb-PHP/permchk && \
    sed -i 's/\r//' /root/FounzyWeb-PHP/update && \
    sed -i 's/\r//' /root/FounzyWeb-PHP/startup && \
    mv /root/FounzyWeb-PHP/startup /usr/bin && \
    mv /root/FounzyWeb-PHP/gitclone /usr/bin && \
    mv /root/FounzyWeb-PHP/permchk /usr/bin && \
    mv /root/FounzyWeb-PHP/update /usr/bin && \
    mkdir /FounzyCONF && \
    mv /root/FounzyWeb-PHP/Founzy.conf /FounzyCONF && \
    mv /root/FounzyWeb-PHP/index.php /FounzyCONF && \
    rm dockerfile && \
    ln -s /FounzyCONF/Founzy.conf /etc/nginx/sites-available/Founzy.conf && \
    ln -s /FounzyCONF/Founzy.conf /etc/nginx/sites-enabled/Founzy.conf && \
    unlink /etc/nginx/sites-enabled/default