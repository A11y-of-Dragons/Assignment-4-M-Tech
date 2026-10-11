FROM node:16

WORKDIR /app

COPY package.json .  

RUN npm install package.json

COPY . . 

EXPOSE 3000

CMD ["node:16", "npm start"]