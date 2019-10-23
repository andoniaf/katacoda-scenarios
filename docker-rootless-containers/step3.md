Comparacion con el sleep infinity

`docker run -d --user 1001 alpine:3.7 sleep 100000`{{execute}}

`docker run -d --user 999 alpine:3.7 sleep 100000`{{execute}}

`docker run -d alpine:3.7 sleep 100000`{{execute}}

`ps aux | grep sleep`{{execute}}