FROM node:12-alpine
RUN mkdir /app
WORKDIR /app

COPY package.json package.json

RUN npm install

COPY . .

EXPOSE 7000

CMD ["index.js"]
