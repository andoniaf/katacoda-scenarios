Si la imagen la estamos creando nosotros

<pre class="file" data-filename="/root/mindundi/Dockerfile" data-target="clipboard">
RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser
</pre>
