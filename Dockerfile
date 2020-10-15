FROM debian:10
LABEL MAINTAINER dr_D00m4n

RUN     apt update && \	
        apt install -y libapache2-mod-php php-mysql php-gd curl

WORKDIR /var/www/html

RUN     rm *.html && \
        curl -s https://wordpress.org/latest.tar.gz | tar zx --strip-components=1

#RUN	curl -s https://wordpress.org/latest.tar.gz | tar zx --strip-components=1


#ADD     latest.tar.gz /home

#CMD     ["/usr/sbin/apachectl","-D","FOREGROUND"]
