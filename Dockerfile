FROM node:lts-buster

COPY package.json .

RUN npm install -g pnpm && pnpm install && npm install -g ts-node

COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "start", "pm2.config.js"]
