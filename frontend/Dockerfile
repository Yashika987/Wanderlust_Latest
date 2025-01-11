# ------------------- Stage 1: Build Stage ------------------------------
FROM node:21 AS frontend-build

# Set the working directory to /app
WORKDIR /app

# Copy the application code
COPY . .

# Install dependencies
RUN npm install

# ------------------- Stage 2: Final Stage ------------------------------
FROM node:21-slim

# Set the working directory to /app
WORKDIR /app

# Copy built assets and dependencies from frontend-builder stage
COPY --from=frontend-build /app .

# Copy the .env.sample file to .env.local
COPY .env.docker .env.local

# Expose port 5173 for the Node.js application
EXPOSE 5173

# Define the default command to run the application in development mode
CMD ["npm", "run", "dev", "--", "--host"]
