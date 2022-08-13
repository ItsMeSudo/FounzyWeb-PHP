#!/bin/bash
#FounzyWeb-PHP server  &&&& Ubuntu
#SUDO                 2022              SERVERHU.EU

cd /root && \
    apt install -y nginx unzip wget curl git && \
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