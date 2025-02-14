FROM node:18

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start", "--", "--host", "0.0.0.0"]
# CMD [ "npm", "start" ]
# # Use an official Node.js runtime as a parent image
# FROM node:18-alpine AS build

# # Set the working directory in the container
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application
# COPY . .

# # Build the React app
# RUN npm run build

# # Use Nginx to serve the built app
# FROM nginx:alpine

# # Copy the built files from the previous stage
# COPY --from=build /app/build /usr/share/nginx/html

# # Expose port 80
# EXPOSE 80

# # Start Nginx
# CMD ["nginx", "-g", "daemon off;"]
