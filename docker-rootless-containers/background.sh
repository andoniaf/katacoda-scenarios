#!/bin/bash

USER=mindundi
FILE=Dockerfile

# Inside Katakoda env we can only work under /root
chmod 755 /root

useradd -m -b /root $USER
usermod -G docker $USER

mv $FILE /root/$USER/ 
chown mindundi:mindundi /root/$USER/$FILE
