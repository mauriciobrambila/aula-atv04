# https://hub.docker.com/r/mauriciobrambila/aula04
# https://github.com/mauriciobrambila/aula-atv04

* Criei um arquivo chamado “start.sh” onde dentro coloquei o script: "docker run -p 3000:3000 --name aula-cc -d rgcampos/aula-ead:0.0.1".
* resumindo, criei um script em um start simplificado, basta digitar .\start.sh , no terminal para iniciar a aplicação.

Start do contêineres, images, mysql: Execute .\start.sh, controi a construirá a imagem do contêiner e tudo pra rodar a url
 http://localhost:3000/consulta-dados.

Uma vez que os contêineres estejam em execução, a pagina deve estar acessível em http://localhost:3000 , http://localhost:3000/consulta-dados, http://localhost:3000/liveness e http://localhost:3000/readiness.
