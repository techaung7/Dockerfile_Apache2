FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean 

ADD index.html /var/www/html/index.html
ADD style.css /var/www/html/style.css

EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
