# Use an official base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . .

# Install dependencies
RUN npm install

# Expose the app on port 3000
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
