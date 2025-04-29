# Use official Node.js image
FROM node:16.17-alpine

# Set working directory
WORKDIR /app

# Copy dependency definitions
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the development server
CMD ["npm", "run", "dev"]
