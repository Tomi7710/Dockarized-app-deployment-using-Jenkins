# Stage 1: Build the WAR inside a Maven container
FROM maven:3.8.8-openjdk-17 AS builder

# Set working directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Build the WAR
RUN mvn clean package -DskipTests

# Stage 2: Run Tomcat with built WAR
FROM tomcat:9.0-jdk17

# Create a non-root user for security
RUN useradd -m appuser
USER appuser

# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR from builder stage
COPY --from=builder /app/target/NumberGuessGame-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Optionally allow environment variables for configuration
ENV NUMBERGUESS_MAX=100

# Start Tomcat in foreground
CMD ["catalina.sh", "run"]

