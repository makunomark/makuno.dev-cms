FROM node:14.17.0-alpine3.13

RUN apk add --no-cache curl

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install
RUN npm run build

COPY . .

EXPOSE 1337

CMD ["npm", "start"]

