FROM node:6-onbuild

RUN npm install pm2 -g

ADD config.json /usr/src/app/

CMD pm2-docker pm2-config.yml

EXPOSE 8080

