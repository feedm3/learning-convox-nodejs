FROM node:8

EXPOSE 3000

ADD app app
WORKDIR /app

RUN npm install

CMD node app/bin/www