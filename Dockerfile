FROM openjdk:11

ARG JAR_FILE=target/demo-docker-environment-variables-0.0.1-SNAPSHOT.jar

VOLUME /tmp

ADD $JAR_FILE app.jar
ENTRYPOINT exec java -jar /app.jar
EXPOSE 8080