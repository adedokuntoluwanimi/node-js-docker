# Using Node.js LTS version as base image
FROM node:18
# Setting the work directory
WORKDIR /app
#Copying available packages
COPY package*.json ./
#Installing app dependencies
RUN npm install
#Copying the rest of the application
COPY . .
#Exposing the port the app runs on
EXPOSE 5000
#Start the app
CMD [ "node", "index.js" ]
