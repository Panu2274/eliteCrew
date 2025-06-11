FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the WAR file, NOT jar
COPY target/EliteCrew-0.0.1-SNAPSHOT.war app.war

# Run the WAR with embedded Tomcat
CMD ["java", "-jar", "app.war"]
