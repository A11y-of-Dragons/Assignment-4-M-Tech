FROM node:16

WORKDIR /app.js

COPY package.json . 

RUN npm install

COPY . . 

EXPOSE 3000

CMD ["Node.js", "npm start"]