FROM node:14

#Create app directory
WORKDIR /app

#Install app dependencies
COPY package*.json ./
RUN npm install express

#Bundle app source
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]