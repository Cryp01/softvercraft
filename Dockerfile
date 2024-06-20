# Use an official OpenJDK runtime as a parent image
FROM openjdk:24

# Set the working directory
WORKDIR /minecraft

# Copy all files from the local directory minecraft-data to /minecraft in the container
COPY minecraft-data /minecraft
COPY haproxy.cfg /usr/local/etc/haproxy

# Expose the Minecraft port
EXPOSE 25565

# Set the entrypoint
ENTRYPOINT ["java", "-Xms1G", "-Xmx1G", "-jar", "paperclip.jar", "nogui"]

# Set up the volumes
VOLUME /minecraft
