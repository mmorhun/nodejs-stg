FROM node:20-alpine3.17

USER node
WORKDIR /home/node/app

COPY --chown=node:node package.json package-lock.json .
RUN npm install

COPY . .
EXPOSE 8080
CMD ["node", "server.js"]
