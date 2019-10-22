#!/bin/bash

USER=mindundi
FILE=Dockerfile

useradd -m -b /home -s /bin/bash $USER
usermod -G docker $USER

chown mindundi:mindundi /home/$USER/$FILE
