FROM debian:bullseye

RUN apt-get update

RUN apt-get install -y curl make g++

RUN curl -sl https://deb.nodesource.com/setup_20.x | bash - 

RUN apt-get install -y nodejs

ADD package.json /package.json

RUN npm install

WORKDIR /src

EXPOSE 8080

CMD ["node", "/src/index.js"]
