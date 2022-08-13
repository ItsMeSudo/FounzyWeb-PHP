# FounzyWeb-PHP

docker pull zud0/founzywebphp:latest

docker container create --name founzywebphp -v /home/user/webphp:/data -p 8080:80/tcp zud0/founzywebphp:latest 

docker container start founzywebphp 

docker logs founzywebphp -f

#

docker exec -it founzywebphp /bin/bash gitclone https://github.com/ItsMeSudo/FounzyWeb-React-test.git

docker exec -it founzywebphp /bin/bash permchk

docker exec -it founzywebphp /bin/bash update

#

debug: docker exec -it founzywebphp /bin/bash
