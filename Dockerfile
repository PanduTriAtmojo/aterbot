FROM node:lts-buster

COPY package.json .

RUN npm install -g pm2 pnpm && pnpm install

ENV PM2_PUBLIC_KEY zblsx5829u87ho7
ENV PM2_SECRET_KEY 5nbvre8sixzkr19

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
