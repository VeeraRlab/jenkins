FROM node:6.14

RUN mkdir -p /testDocker

ADD . /testDocker

WORKDIR /testDocker

RUN npm install

EXPOSE 3100

CMD node server.js