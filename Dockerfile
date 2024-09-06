FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.lock ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]
