FROM openjdk:11

ARG JAR_FILE=target/demo-docker-environment-variables-0.0.1-SNAPSHOT.jar

VOLUME /tmp

ADD $JAR_FILE app.jar
CMD exec java  -DVARIABLE_VALUE="$(cat /run/secrets/environment-secret)" -jar /app.jar
EXPOSE 8080