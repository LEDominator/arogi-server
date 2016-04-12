FROM tniblett/arogi-apache-cgi

MAINTAINER Tim Niblett tniblett@arogi.com

#ENV "DEBIAN_FRONTEND=noninteractive"
#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -q

CMD ["/usr/sbin/apache2ctl", "-D",  "FOREGROUND"]

EXPOSE 80
