FROM openjdk:11-jre-slim
WORKDIR /var/www/render/
COPY ./server.jar ./server.jar
CMD ["java", "-jar", "server.jar", "host", "Molten_Lake"]
EXPOSE 6567:6567