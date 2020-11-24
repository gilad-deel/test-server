FROM node:current-alpine

RUN mkdir -p /srv/app && chown node:node /srv/app

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

USER node
WORKDIR /srv/app

EXPOSE 3000

COPY package*.json ./
RUN npm install && npm cache clean --force

COPY . .

CMD ["node", "server.js"]
