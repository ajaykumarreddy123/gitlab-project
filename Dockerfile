FROM node:18-alpine3.16

WORKDIR /usr/src/app

COPY ./app/package*.json ./
RUN npm install
COPY ./app .

EXPOSE 3000
CMD ["npm", "start"]
