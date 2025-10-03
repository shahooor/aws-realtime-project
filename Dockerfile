 FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
    
RUN rm -rf /var/www/html/*

COPY 2138_aqua_nova/ /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
