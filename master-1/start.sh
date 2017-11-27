#!/bin/sh
ktserver -plsv /usr/local/libexec/ktplugservmemc.so \
	-plex 'port=11212' \
	-sid 210 \
	-rts /opt/kt/db/210.rts \
	-ulog /opt/kt/db/210-ulog \
	-port 11211 \
	-mhost 10.2.0.220 \
	-mport 11211 \
	'/opt/kt/db/casket.kch#opts=l#bnum=1000000#msiz=1g#dfunit=8'

