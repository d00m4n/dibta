FROM debian:10
LABEL MAINTAINER dr_D00m4n

RUN     apt update && \	
        apt install -y libapache2-mod-php php-mysql php-gd curl && \
	apt autoremove -y

WORKDIR /var/www/html

RUN     rm *.html && \
        curl -s https://wordpress.org/latest.tar.gz | tar zx --strip-components=1 && \
	ln -sf /dev/stdout /var/log/apache2/access.log && \
        ln -sf /dev/sterr /var/log/apache2/error.log 

EXPOSE 80

CMD     ["/usr/sbin/apachectl","-D","FOREGROUND"]
