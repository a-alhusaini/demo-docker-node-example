FROM node:16

WORKDIR /usr/src/app/

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run tailwind:css

EXPOSE 3000

CMD [ "node", "app.js" ]
