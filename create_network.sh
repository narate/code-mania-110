#!/bin/bash
docker network create -d macvlan --subnet=10.2.0.0/24 --gateway=10.2.0.254 -o parent=eno1 kt_vlan
