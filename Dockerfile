FROM node

WORKDIR /app

COPY package.json ./

COPY yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 80

CMD ["yarn", "preview", "--host"]
