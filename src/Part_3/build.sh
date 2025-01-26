#!/bin/bash
docker pull nginx
docker run -d -p 81:81 --name hello_server nginx
docker cp nginx.conf hello_server:/etc/nginx
docker cp server.c hello_server:/etc/nginx/
docker exec hello_server apt-get update
docker exec hello_server apt-get install -y gcc spawn-fcgi libfcgi-dev
docker exec hello_server gcc /etc/nginx/server.c -o /etc/nginx/webserver -l fcgi
docker exec hello_server spawn-fcgi -p 8080 /etc/nginx/webserver
docker exec hello_server nginx -s reload
curl localhost:81/
echo "Введи любой символ для выключения и очистки"
read symbol
docker stop hello_server
docker rm hello_server
docker rmi -f nginx