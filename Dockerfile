FROM node:latest

SHELL ["/bin/bash", "-c"]

WORKDIR /docker-travis

ADD . .

RUN npm install -g yarn \
    && yarn install

RUN yarn start

EXPOSE 3000
