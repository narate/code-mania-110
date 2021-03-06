#!/bin/sh
ktserver -plsv /usr/local/libexec/ktplugservmemc.so \
        -plex 'port=11212' \
        -sid 211 \
        -rts /opt/kt/db/211.rts \
        -ulog /opt/kt/db/211-ulog \
        -port 11211 \
        -mhost 10.2.0.210 \
        -mport 11211 \
        '/opt/kt/db/casket.kch#opts=l#bnum=1000000#msiz=1g#dfunit=8'
