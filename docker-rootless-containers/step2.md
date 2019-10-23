How can we limit this when the image is already created? We can use the flag `--user`.

`docker run --user 1001 -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}}

If we're creating the image, we can add an user and run the container in the context of a user/group with the least [privileges required](https://en.wikipedia.org/wiki/Principle_of_least_privilege).

<pre class="file" data-filename="/home/mindundi/Dockerfile" data-target="replace">
FROM alpine:3.7

RUN addgroup -S ourgroup && adduser -u 999 -S ouruser -G ourgroup

USER ouruser

CMD ["cat", "/tmp/secrets.txt"]
</pre>

`docker build -t ourimage .`{{execute}} 

`docker run -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}} 