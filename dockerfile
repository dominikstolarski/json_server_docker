FROM node:15.14.0-alpine3.10
WORKDIR /usr/src/api
ADD data.json .
RUN npm install -g json-server
EXPOSE 3000
CMD json-server -H 0.0.0.0 --watch data.json