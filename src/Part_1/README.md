## SimpleDocker/Part_1

- Ввод команды `sudo docker pull nginx`: скачивание образа контейнера
![pull_nginx](pics/pull_nginx.png)
- Ввод комнады `sudo docker images nginx`: проверка с какким параметрами сохранён образ
![images_nginx](pics/images_nginx.png)
- Ввод команды `sudo docker run -d nginx` и `sudo docker ps`: запуск и проверка образа
![run_and_ps_nginx](pics/run_and_ps_nginx.png)
- Ввод команды `sudo docker inspect nginx`: проверка внутренних параметров образа
![inspect_nginx](pics/inspect_nginx.png)
- Ввод команды `sudo docker stop 32f260b845f0`: Остановка работы контейнера (другой id контейнера тк я прошлую остановку забыл зафиксировать скрином)
![stop_nginx](pics/stop_nginx.png)
- Ввод команды `sudo docker run -d -p 80:80 -p 443:443 -d nginx`: запуск с параметрами для localhost
![run_nginx_with_localhost](pics/run_nginx_with_localhost.png)
- Открытие в браузезере `localhost:80`
![result_run_nginx_with_localhost](pics/result_run_nginx_with_localhost.png)
- Ввод команды `sudo docker restart 32f260b845f0`
![restart_nginx_used_id](pics/restart_nginx_used_id.png)
****