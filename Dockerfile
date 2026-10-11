
#what this doe is taking the baiscs form Node.js
FROM node:16
#this is creating a working directory "/app"
WORKDIR /app
#this copies the 'package.json' and 'package-lock.json' into /app
COPY package*.json .
#this installs the dependencies in 'package.json' in the containter
RUN npm install .
#this copies whats from the working directory into the container
COPY . . 
#this exposes port 3000
EXPOSE 3000
#this is the command to run the app.
CMD ["npm", "start"]