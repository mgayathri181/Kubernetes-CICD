# Use a lightweight JRE image
FROM adoptopenjdk/openjdk11:alpine-jre

# Set working directory
WORKDIR /opt/app

# Copy the JAR file
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
