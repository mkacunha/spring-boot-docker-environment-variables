docker stack rm en
docker build -t demo-docker-enviroment-variables .
docker stack deploy -c docker-compose-stack.yml en
docker run -it  demo-docker-enviroment-variables:latest

docker service logs en_app