#FROM maven:3.8.2-jdk-11 AS build


#COPY . .
#RUN mvn clean package -DskipTests
#FROM openjdk:11-jre-slim


#ENTRYPOINT ["java", "-jar", "server.jar", "host", "Molten_Lake"]


FROM openjdk:11-jre-slim
EXPOSE 8080
COPY ./server.jar ./server.jar
COPY ./config ./config
COPY ./run_server.sh ./run_server.sh
ENTRYPOINT ["java", "-jar", "server.jar", "host", "Molten_Lake"]
