FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]
