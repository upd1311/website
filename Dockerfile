FROM ubuntu
RUN apt-get update && apt-get -y install tzdata && apt-get -y install apache2
RUN rm /var/www/html/index.html
ADD . /index.html /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

