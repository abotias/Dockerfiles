FROM alpine
RUN apk add python3 py3-pip
RUN pip install requests
RUN apk add apache2
RUN sed -i 's/Listen 80/Listen 30080/g' /etc/apache2/httpd.conf
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 30080/tcp
