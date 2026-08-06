FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

# Hii inafungua port ya ndani ya server
EXPOSE 3000

CMD ["npm", "start"]
