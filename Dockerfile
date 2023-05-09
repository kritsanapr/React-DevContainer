# Pull the base image 
FROM node:18.16.0-alpline

# Set the working directory
WORKDIR /usr/app

# Copy app dependencies to container
Copy ./package.json ./

# Install dependencies
RUN npm Install

# Copy app source code to container
COPY . .

# Expose port vite port 3000, 5173
EXPOSE 3000 5173

# Deploy app for local development
CMD ["npm", "run", "dev"]