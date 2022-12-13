FROM node:16-alpine

RUN apk add --update --no-cache python3 build-base gcc && ln -sf /usr/bin/python3 /usr/bin/python

RUN mkdir -p /usr/src/nuxt
WORKDIR /usr/src/nuxt

COPY . .

RUN yarn install

RUN yarn build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

ENTRYPOINT ["node", ".output/server/index.mjs"]