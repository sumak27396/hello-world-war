FROM ubuntu AS builder
WORKDIR /app
RUN apt update -y
RUN apt install maven -y
COPY . .
RUN mvn clean package

FROM tomcat
CMD [ "service" , "start" , "tomcat" ]
COPY --from=builder ./app/target/hello-world-war-1.0.0.war ./webapps
EXPOSE 8080
