# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install express globally (no package.json needed)
RUN npm install express

# Copy index.js into the container
COPY index.js .

# Expose port 3001
EXPOSE 3001

# Start the Node.js server
CMD ["node", "index.js"]

