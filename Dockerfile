FROM ubuntu
RUN apt-get update && apt-get -y install tzdata && apt-get -y install apache2
ENTRYPOINT apachectl -D FOREGROUND

