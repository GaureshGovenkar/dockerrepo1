FROM centos:latest
RUN yum install httpd zip unzip  -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/4uhost.zip /var/www/html
WORKDIR /var/www/html
RUN unzip 4uhost.zip
COPY 4uhost/* .
EXPOSE 80
CMD ["usr/bin/httpd", "-D", "FOREGROUND"]
