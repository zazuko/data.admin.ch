FROM node:12

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
COPY . /usr/src/app
RUN npm ci && npm cache clean --force

ENV NODE_ENV production

RUN npm install pm2 -g
CMD pm2-runtime start npm -- start

EXPOSE 8080
