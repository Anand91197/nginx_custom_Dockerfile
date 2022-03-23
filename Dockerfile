FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install nginx -y

RUN rm -rf /var/www/html/index.nginx-debian.html 

COPY index.html charizard.png  /var/www/html/

EXPOSE 80 

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]





