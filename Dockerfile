FROM maven:3.8.2-jdk-11 AS build


COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:11-jre-slim
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "server.jar", "host", "Molten_Lake"]


