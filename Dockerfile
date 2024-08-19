FROM node:20.3.0

WORKDIR /home/node

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 6041

ENTRYPOINT ["node", "index.js"]
