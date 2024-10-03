FROM ibmcom/websphere-liberty:latest

# Copy the server configuration
COPY server.xml /config/

# Copy the generated WAR file
COPY target/hello-world-1.0-SNAPSHOT.war /config/apps/

# Expose the port
EXPOSE 9080

CMD ["/usr/bin/start.sh"]

