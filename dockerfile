# Use official Node.js image
FROM node:18-slim

# Set working directory inside container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of backend files
COPY . .

# Expose port backend runs on
EXPOSE 3002

# Start backend
CMD ["node", "server.js"]
