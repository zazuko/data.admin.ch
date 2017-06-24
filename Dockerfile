FROM node:6-onbuild

RUN npm install pm2 -g

ENV TRIFID_CONFIG config.admin.json

ADD config.admin.json /usr/src/app/
ADD data /usr/src/app/data

CMD pm2-docker pm2-config.yml

EXPOSE 8080

