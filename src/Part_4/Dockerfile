FROM nginx

RUN apt-get update && apt-get upgrade
RUN apt-get install -y gcc spawn-fcgi libfcgi-dev


RUN mkdir ./c_server
WORKDIR /c_server


COPY ./server.c .


RUN gcc server.c -o webserver -l fcgi


COPY ./start.sh .
COPY ./nginx.conf /etc/nginx


EXPOSE 81
CMD [ "bash","/c_server/start.sh" ]