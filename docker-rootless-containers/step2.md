
`docker run --user 1001 -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}}

Si la imagen la estamos creando nosotros

<pre class="file" data-filename="/home/mindundi/Dockerfile" data-target="replace">
FROM alpine:3.7

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

CMD ["cat", "/tmp/secrets.txt"]
</pre>

`docker build -t ourimage .`{{execute}} 

`docker run -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}} 