FROM openjdk:11-jre-slim
COPY target/mindustry.jar /server2.jar
CMD ["java","-jar","/server2.jar"]
CMD ["host","Molten_Lake"]