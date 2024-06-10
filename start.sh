
docker run -d --name mysql-container \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  -e MYSQL_DATABASE=aula04 \
  -p 3306:3306 \
  -v %cd%/init.sql:/docker-entrypoint-initdb.d/init.sql \
  mysql:5.7

# Esperar alguns segundos para ter certeza que MySQL está ok
timeout /t 10

docker build -t aula-atv04-app .

docker run -d --name app-container \
  --link mysql-container:mysql \
  -e DB_HOST=mysql-container \
  -e DB_USER=root \
  -e DB_PASSWORD= \
  -e DB_NAME=aula04 \
  -p 3000:3000 \
  aula-atv04-app

  

