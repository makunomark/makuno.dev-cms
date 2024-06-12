FROM node:14.17.0-alpine3.13

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install
RUN npm run build

COPY . .

CMD ["npm", "start"]

