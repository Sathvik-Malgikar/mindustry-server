FROM openjdk:11-jre-slim
WORKDIR /var/www/render/
COPY target/mindustry.jar ./server.jar
CMD ["java","-jar","./server.jar"]
CMD ["host","Molten_Lake"]