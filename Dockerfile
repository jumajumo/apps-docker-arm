FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} /var/jumajumo/app.jar
COPY sqlite.db /var/jumajumo/sqlite.db
COPY default-env.json default-env.json
ENTRYPOINT ["java","-Dspring.profiles.active=container","-jar","/var/jumajumo/app.jar"]
