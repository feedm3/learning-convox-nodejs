FROM node:8

EXPOSE 3000

WORKDIR /app
COPY app /app

RUN npm install

CMD node bin/www