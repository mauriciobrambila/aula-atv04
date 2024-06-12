FROM node:18-slim

ENV NODE_ENV development

USER root

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app/node_modules /usr/src/app/tmp

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
