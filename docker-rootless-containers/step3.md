Comparacion con el sleep infinity

`docker run -d --user 1001 alpine:3.7 sleep infinity`{{execute}}

`docker run -d --user 999 alpine:3.7 sleep infinity`{{execute}}

`docker run -d alpine:3.7 sleep infinity`{{execute}}

`ps aux | grep sleep`{{execute}}