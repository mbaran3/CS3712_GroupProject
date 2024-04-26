FROM alpine:latest AS build
FROM node
WORKDIR .
COPY package*.json .
RUN npm install
COPY . . 
CMD ["npm", "start"] 
