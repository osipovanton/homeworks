## Ответы на задания
### Задача 1
https://hub.docker.com/repository/docker/seaways/custom-nginx/general
### Задача 2
<img width="1894" height="528" alt="image" src="https://github.com/user-attachments/assets/d9cee834-09e6-4910-9d8b-8788475b3d9f" />

### Задача 3
<img width="1379" height="473" alt="image" src="https://github.com/user-attachments/assets/318e507d-8608-4c31-9331-a2cbcde936fe" />
<img width="887" height="494" alt="image" src="https://github.com/user-attachments/assets/2ecaa012-c1ea-4462-8e15-d449dd631214" />
***Ответ к пункту 3***
В контейнере nginx запущен как процесс с PID 1.
При нажатии CTRL+C в интерактивном режиме (когда мы в контейнере), мы завершаем процесс "прородитель" с PID 1, тем самым завершая работу самого контейнера.
***Ответ к пункту 10***
При запуске контейнера мы опубликовали порт 80 контейнера на 127.0.0.1:8080 хоста.
После изменения порта nginx в самом контейнере, nginx начал слушать порт 81 вместо 80.
Но при этом опубликованные порты при запуске контейнера остались прежними - 127.0.0.1:8080 хоста и порт 80 в контейнере.

### Задача 4
<img width="920" height="858" alt="image" src="https://github.com/user-attachments/assets/2c6556d4-77de-4468-83b5-6dbd1418fde5" />

### Задача 5
<img width="1375" height="973" alt="image" src="https://github.com/user-attachments/assets/a8decde6-f204-4b11-9471-420fcf3e1d69" />
<img width="1908" height="879" alt="image" src="https://github.com/user-attachments/assets/b6951dda-a7cb-406c-a615-f2302b530d2c" />
<img width="1357" height="118" alt="image" src="https://github.com/user-attachments/assets/02c72e37-a24a-4709-a70c-a443c055d0dd" />
<img width="575" height="673" alt="image" src="https://github.com/user-attachments/assets/9740a58b-400e-4594-882b-1538b79fe7c8" />
<img width="774" height="452" alt="image" src="https://github.com/user-attachments/assets/d5f68ab7-fbfb-45b9-9abd-0edc6bea28c4" />
