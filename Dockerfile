# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy built WAR file into container
COPY target/EliteCrew-0.0.1-SNAPSHOT.war app.war

# Run the Spring Boot app
CMD ["java", "-jar", "app.war"]
