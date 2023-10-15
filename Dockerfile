# Use an appropriate Node.js base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the script file
COPY server.js ./

# Expose the desired port
EXPOSE 6060

# Run the script
CMD [ "node", "server.js" ]

