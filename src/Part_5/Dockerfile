FROM nginx:latest
RUN export DOCKER_CONTENT_TRUST=1
USER root

RUN apt-get update && apt-get upgrade; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /app; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    rm -rf /var/lib/apt/lists/*; \
    chmod u-s /usr/bin/su; \
    chmod u-s /usr/bin/mount; \
    chmod u-s /usr/bin/gpasswd; \
    chmod g-s /usr/bin/chage; \
    chmod g-s /usr/sbin/unix_chkpwd; \
    chmod g-s /usr/bin/expiry; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/passwd; \
    chmod u-s /usr/bin/newgrp; \
    chmod u-s /usr/bin/umount; \
    chmod g-s /usr/bin/wall


RUN mkdir ./c_server
WORKDIR /c_server


COPY ./server.c .


RUN gcc server.c -o webserver -l fcgi


COPY ./start.sh .
COPY ./nginx.conf /etc/nginx


EXPOSE 81
USER nginx
ENTRYPOINT [ "sh","/c_server/start.sh" ]

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl http://localhost:80/" ]