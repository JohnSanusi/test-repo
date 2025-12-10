# Use official Node.js runtime as base image
FROM node:22-alpine

# Set working directory in container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application files
COPY . .

# Expose port (if your app uses one, adjust as needed)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
