FROM centos:latest

RUN  yum install httpd -y
RUN  yum install sudo -y 
RUN yum install /sbin/service -y
RUN  yum install php -y

COPY  linux.html /var/www/html/

EXPOSE 80

CMD  /usr/sbin/httpd  -DFOREGROUND
