FROM eclipse-temurin:17-jdk

WORKDIR /opt/lavalink

# Copy your Lavalink jar and config
COPY Lavalink.jar .
COPY application.yml .

# Optional: Copy plugins folder if exists
COPY plugins ./plugins

# Expose Lavalink port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-Dlogback.configurationFile=logback.xml", "-jar", "Lavalink.jar"]
