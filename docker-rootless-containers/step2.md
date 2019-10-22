
`docker run --user 1001 -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}}

Si la imagen la estamos creando nosotros

<pre class="file" data-filename="/home/mindundi/Dockerfile" data-target="replace">
FROM alpine:3.7

RUN addgroup -S ourgroup && adduser -u 999 -S ouruser -G ourgroup

USER ouruser

CMD ["cat", "/tmp/secrets.txt"]
</pre>

`docker build -t ourimage .`{{execute}} 

`docker run -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}} 