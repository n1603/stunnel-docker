#!/bin/sh

stunnel  /etc/stunnel/stunnel.conf -c

if [ $? -eq 0 ]; then
        echo "stunnel started successfully" >> /stunnel.log
else
        echo "stunnel start failed" >> /stunnel.log
fi
