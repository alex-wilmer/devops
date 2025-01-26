FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Install necessary packages
RUN apk add --no-cache curl bash

# Install bun (as a global tool)
RUN curl -fsSL https://bun.sh/install | bash

# Set bun's binary path
ENV PATH="/root/.bun/bin:$PATH"

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies using bun
RUN bun install

# Copy the rest of the app
COPY . .

# Expose the application port
EXPOSE 3000

# Start the app
CMD ["bun", "start"]