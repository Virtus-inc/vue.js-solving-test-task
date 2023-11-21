FROM node

RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

COPY . /usr/src/nuxt-app

RUN yarn set version berry
RUN yarn install

EXPOSE 3000

CMD ["yarn","dev"]
