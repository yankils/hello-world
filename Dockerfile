FROM ubuntu

RUN apt-get update && apt-get install apache2 -y && service apache2 restart

ADD index.html /var/www/html/

CMD apachectl -D FOREGROUND

#RUN rm -rf var/www/html/*
