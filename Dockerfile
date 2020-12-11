FROM node:14.11-buster-slim

RUN mkdir -p /usr/src/api
WORKDIR /usr/src/api

COPY ./package.json .
RUN npm install --only=prod
COPY . .

CMD ["npm","start"]