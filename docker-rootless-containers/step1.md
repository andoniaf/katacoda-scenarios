
`echo "top secret secret" >> /root/secrets.txt`{{execute}}

`chmod 0600 /root/secrets.txt`{{execute}}

`ls -l /root/secrets.txt`{{execute}} 

`su - mindundi`{{execute}} 

`cat /root/secrets.txt`{{execute}} 

<pre class="file" data-filename="/home/mindundi/Dockerfile" data-target="replace">
FROM alpine:3.7
CMD ["cat", "/tmp/secrets.txt"]
</pre>

`docker build -t ourimage .`{{execute}} 

`docker run -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}} 