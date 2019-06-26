FROM openjdk:8-jdk-slim
MAINTAINER sangrei@163.com
ADD target/springbootdemo-1.0-SNAPSHOT.jar /app.jar
EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xms64m","-Xmx128m","-jar","app.jar","--server.port=80"]
