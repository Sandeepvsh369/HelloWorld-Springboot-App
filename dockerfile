FROM openjdk:8-jdk-alpine
COPY ./target/helloworld-0.0.1.war /usr/app/
WORKDIR /usr/app
RUN apt install httpd
ENTRYPOINT ["java","-jar","helloworld-0.0.1.war"]
