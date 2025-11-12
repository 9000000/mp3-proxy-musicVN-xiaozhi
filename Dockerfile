# Use the official Node.js 18 Alpine image as a base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Install dependencies for mp3-api
COPY mp3-api/package*.json ./mp3-api/
RUN npm install --prefix mp3-api

# Install dependencies for adapter
COPY adapter/package*.json ./adapter/
RUN npm install --prefix adapter

# Copy the rest of the application code
COPY . .

# Expose the ports for both services
EXPOSE 5555
EXPOSE 5005

# Make the startup script executable
RUN chmod +x ./start.sh

# Define the command to run the startup script
CMD [ "./start.sh" ]
