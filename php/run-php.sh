#!/bin/bash
docker run -d --restart=always \
        --name php_app \
        --hostname php_app \
        --net=kt_vlan \
        --ip 10.2.0.222 \
        -v $(pwd)/html:/var/www/html \
        php:7-apache

