# Use Maven to build the app
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Use OpenJDK to run the app
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/EliteCrew-0.0.1-SNAPSHOT.war app.war
CMD ["java", "-jar", "app.war"]
