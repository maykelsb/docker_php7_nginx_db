FROM debian:jessie

LABEL maintainer maykelsb@yahoo.com.br

RUN apt-get update && apt-get install -y \
    nginx

ADD nginx.conf /etc/nginx/
ADD localdev.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/localdev.conf /etc/nginx/sites-enabled/localdev
RUN rm /etc/nginx/sites-enabled/default

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
