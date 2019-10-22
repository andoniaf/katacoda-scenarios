Si la imagen la estamos creando nosotros

<pre class="file" data-filename="/home/mindundi/Dockerfile" data-target="replace">
FROM alpine:3.7

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

CMD ["cat", "/tmp/secrets.txt"]
</pre>
