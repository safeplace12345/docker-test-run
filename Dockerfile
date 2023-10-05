FROM node:18-alpine
WORKDIR /test-run-1/

COPY src/ /test-run-1/src
COPY public/ /test-run-1/public
COPY package.json /test-run-1

RUN npm install
RUN npm install -g serve
RUN npm run build
RUN rm -rf /test-run-1/src /test-run-1/public /node_modules

CMD [ "serve", "-s", "build" ]
