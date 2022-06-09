FROM adoptopenjdk/openjdk11:ubi
COPY "./target/springboot-servicio-zuul-server-0.0.1-SNAPSHOT" "zuul-app.jar"
EXPOSE 8090:8090
ENTRYPOINT ["java", "-jar", "zuul-app.jar"]