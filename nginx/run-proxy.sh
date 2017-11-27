#!/bin/bash
docker run -d --restart=always \
	--name php-proxy \
	--hostname php-proxy \
	--net=kt_vlan \
	--ip 10.2.0.212 \
	-v $(pwd)/site:/opt/lixen/nginx/conf/site \
	-p 8080:80 \
	domecloud/openresty:edge

docker network connect bridge php-proxy

