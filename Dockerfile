# Use an official Node.js runtime as the base image
FROM node:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files from your host to the container's working directory
COPY package*.json ./

# Install the app's dependencies in the container
RUN npm install

# Create a src directory in the container
RUN mkdir src

# Copy the rest of the app's files from your host to the src directory in the container
# COPY src/* ./src/
# Copy the rest of the app's files from your host to the src directory in the container
COPY src ./src/


# Inform Docker that the container listens on port 3000 at runtime
EXPOSE 3000

# Define the command to run when the container starts
CMD [ "npm", "run", "dev" ]
