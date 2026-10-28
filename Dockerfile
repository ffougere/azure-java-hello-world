FROM openjdk:11-jre-slim

COPY target/azure-java-hello-world-1.0-SNAPSHOT.jar /app/azure-java-hello-world.jar

WORKDIR /app

CMD ["java", "-jar", "azure-java-hello-world.jar"]