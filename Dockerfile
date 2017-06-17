FROM node:8-onbuild

RUN npm install pm2 -g

ENV TRIFID_CONFIG config.admin.json

ADD config.admin.json /usr/src/app/
ADD data /usr/src/app/data

CMD pm2-docker /usr/src/app/node_modules/.bin/trifid -- --config $TRIFID_CONFIG

EXPOSE 8080

