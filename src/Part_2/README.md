## SimpleDocker/Part_2
- **Ввод команды:** `sudo docker exec -w /etc/nginx 31d292a782fa cat nginx.conf`**:** просмотр конфигурационного файла образа nginx
![read_nginx_config](pics/read_nginx_config.png)
- **Ввод команды:** `touch nginx.config` и `sudo vim nginx.conf`**:**
![create_and_redact_new_nginx_config](pics/create_and_redact_new_nginx_config.png)
- **Отредактированный** новый конфигурационный файла
![in_new_nginx_config](pics/in_new_nginx_config.png)
- **Ввод команды** `sudo docker cp ./nginx.conf 31d292a782fa:/etc/nginx/`**:** копирование нового конфигурационного файла в папку образа nginx
![copy_new_nginx_config_in_cont](pics/copy_new_nginx_config_in_container.png)
- **Ввод команды:** `sudo docker restart 31d292a782fa`**:** перезапуск контейнера
![restart_with_new_nginx_config](pics/restart_with_new_nginx_config.png)
- **Проверка вывода:** `localhost/status`
![result_after_add_new_config](pics/result_after_add_new_config.png)
- **Ввод команды:** `sudo docker export 31d292a782fa -o container.tar`**:** экспортирование контейнера
![export_nginx_container.png](pics/export_nginx_container.png)
- **Ввод команды:** `sudo docker stop 31d292a782fa`**:** остановка работы активного контейнера
![stop_nginx_container.png](pics/stop_container_after_export.png)
- **Ввод команды:** `sudo docker rmi -f 7f553e8bbc89`**:** форс удаление образа контейнера nginx по его id
![delete_nginx_images](pics/delete_nginx_images.png)
- **Ввод команды:** `sudo docker import container.tar new_nginx`**:** импорт в новый образ под название new_nginx
- (Забыл сохранить скрин, дальше по скринам будет видно что всё работает)
- **Ввод команды:** `sudo docker run -d -p 80:80 -p 443:443 -d new_nginx -g nginx "daemon off;"`**:** запуск импортированного образа
![run_new_nginx_images](pics/run_new_nginx_image.png)
- **Проверка вывода:** `localhost/status`
![result_after_run_new_nginx_image](pics/result_after_run_new_nginx_image.png)
****