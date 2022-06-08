# Let's get the base image of node14
FROM node:16
# Create app directory
WORKDIR /app
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
# Install app dependencies
RUN npm install
# Bundle app source
COPY . .
# Command to run our app
CMD [ "npm", "start"]