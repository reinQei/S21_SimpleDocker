docker build . -t hello_server:v2 
docker run --rm --name hello_server -p 80:81 hello_server:v2