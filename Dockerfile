# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the package files to install dependencies
COPY package.json package-lock.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Define the entry point for the container
CMD ["node", "app.js"]
