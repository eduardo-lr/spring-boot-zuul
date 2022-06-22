FROM maven:3-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
WORKDIR /home/app
RUN mvn install

FROM openjdk:11-jre-slim
COPY --from=build target/springboot-servicio-zuul-server-0.0.1-SNAPSHOT.jar eureka-app.jar
EXPOSE 8090
CMD ["java", "-jar", "eureka-app.jar"]