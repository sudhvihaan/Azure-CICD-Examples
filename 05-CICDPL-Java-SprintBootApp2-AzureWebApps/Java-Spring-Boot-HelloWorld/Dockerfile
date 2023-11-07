# Use an image with AdoptOpenJDK 17
FROM openjdk:22-ea-18-jdk-bookworm

# Create a directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/Hello-world-0.0.1-SNAPSHOT.jar /app/Hello-world-V1.0.3.jar

# Set the working directory for the CMD command
CMD ["java", "-jar", "Hello-world-V1.0.3.jar"]
