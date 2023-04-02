FROM openjdk:11-jre-slim
WORKDIR /var/www/render/
COPY ./server.jar ./server.jar
COPY ./config ./config
COPY ./run_server.sh ./run_server.sh
CMD ["java", "-jar", "server.jar", "host", "Molten_Lake"]