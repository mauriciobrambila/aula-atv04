
# Remova os contêineres se já existirem
docker rm -f mysql-container app-container

# Cria uma rede
docker network create my-network

# Inicia o contêiner MySQL
docker run -d --name mysql-container \
  --network my-network \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  -e MYSQL_DATABASE=aula04 \
  -p 3306:3306 \
  -v ${PWD}/init.sql:/docker-entrypoint-initdb.d/init.sql \
  mysql:5.7

# Aguarde alguns segundos para o MySQL estar ok
sleep 10

# Cria a imagem 
docker build -t aula-atv04-app .

# Inicia o contêiner
docker run -d --name app-container \
  --network my-network \
  -e DB_HOST=mysql-container \
  -e DB_USER=root \
  -e DB_PASSWORD= \
  -e DB_NAME=aula04 \
  -p 3000:3000 \
  aula-atv04-app

# por opção, limpe a rede 
# docker network rm "nome da minha-rede"
