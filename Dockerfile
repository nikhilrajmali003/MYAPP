# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Expose the port that the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
