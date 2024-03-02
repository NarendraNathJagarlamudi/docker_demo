FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y apache2 \
    && echo "<h1>Hello World from $(hostname -i)</h1>" > /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
