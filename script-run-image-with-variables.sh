mvn package -DskipTests=true
docker rmi demo-docker-enviroment-variables -f || true
docker build -t demo-docker-enviroment-variables .
docker rm demo-docker-enviroment-variables -f || true
docker run --name demo-docker-enviroment-variables -e VARIABLE_VALUE="Value Docker Enviroment" -e VARIABLE_ARRAY="Value Docker Enviroment 1, Value Docker Enviroment 2" demo-docker-enviroment-variables -d
docker logs demo-docker-enviroment-variables -f