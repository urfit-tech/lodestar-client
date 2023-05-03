FROM node:19-alpine

WORKDIR /usr/apps/cti

COPY package.json ./
COPY yarn.lock ./
RUN yarn install 

COPY . .

RUN NODE_OPTIONS="--max-old-space-size=8192" yarn build

EXPOSE 3333

CMD ["yarn", "start"]


