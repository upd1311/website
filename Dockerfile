FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND = "noninteractive" apt-get -y install tzdat
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

