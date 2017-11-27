FROM php:5-apache
MAINTAINER Narate Ketram <koonnarate@gmail.com>

RUN apt-get update && apt-get install -y  libmemcached-dev zlib1g-dev \
    && pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached
