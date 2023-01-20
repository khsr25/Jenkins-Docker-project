FROM  centos:centos7
MAINTAINER khsr25@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cakezone.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip cakezone.zip
RUN cp -rvf cakezone/* .
RUN rm -rf cakezone cakezone.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
