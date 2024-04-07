FROM node:lts-buster

COPY package.json .

RUN npm install -g pnpm && pnpm install && npm install -g ts-node pm2 && npm install ts-node

COPY . .

EXPOSE 5000

ENV PM2_PUBLIC_KEY zblsx5829u87ho7
ENV PM2_SECRET_KEY 5nbvre8sixzkr19

CMD ["pm2-runtime", "start", "pm2.config.cjs"]
