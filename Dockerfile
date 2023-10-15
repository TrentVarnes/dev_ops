# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your application source code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port your Next.js app runs on (adjust if necessary)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
