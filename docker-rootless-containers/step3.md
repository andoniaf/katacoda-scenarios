But, why is this happening? Let's see it with an example:

`docker run -d --user 1001 alpine:3.7 sleep 100000`{{execute}}

`docker run -d --user 999 alpine:3.7 sleep 100000`{{execute}}

`docker run -d alpine:3.7 sleep 100000`{{execute}}

`ps aux | grep sleep | grep -v grep`{{execute}}