# Use an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory
WORKDIR /minecraft

# Copy all files from the local directory minecraft-data to /minecraft in the container
COPY minecraft-data /minecraft

# Expose the Minecraft port
EXPOSE 25565

# Set the entrypoint
ENTRYPOINT ["./run.sh"]

# Set up the volumes
VOLUME /minecraft
