FROM node:lts

RUN mkdir /freech-proxy
WORKDIR /freech-proxy

COPY freech-proxy.js ./
COPY package*.json ./
RUN npm ci

EXPOSE 443
ENTRYPOINT ["node", "freech-proxy.js"]