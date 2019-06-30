FROM harbor.wildpib.com/library/alpine-oraclejre8:slim
MAINTAINER sangrei@163.com
ADD target/demo-0.0.1-SNAPSHOT.jar /app.jar
EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xms64m","-Xmx128m","-jar","app.jar","--server.port=80"]
