# specify the node base image with your desired version node:<version>
FROM node

LABEL maintainer="yigit.at@wittycommerce.com"

#current directory
WORKDIR /app

#copy current directory
COPY . /app

#apollo server NPM lib
RUN npm install --save apollo-server-express graphql-tools graphql express body-parser

#run index.js
CMD node index.js

#define port
EXPOSE 8008
