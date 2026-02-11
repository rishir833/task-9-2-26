FROM node:20

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

RUN yarn add pg

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
