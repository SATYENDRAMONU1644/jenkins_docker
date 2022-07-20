FROM centos:7
LABEL name=satya
RUN yum install httpd -y
COPY index.html  /var/www/html/
CMD ["httpd","-D","FOREGROUND"]
