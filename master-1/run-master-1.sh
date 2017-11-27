#!/bin/bash
docker run -d --restart=always \
	--name kt-master-1 \
	--hostname kt-master-1 \
	--net=kt_vlan \
	--ip 10.2.0.210 \
	-v $(pwd)/db:/opt/kt/db \
	-v $(pwd)/start.sh:/start.sh \
	-p 11211:11211 \
	narate/ktserver /start.sh
