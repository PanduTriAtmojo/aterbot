FROM node:latest

COPY package.json .

RUN npm install -g pnpm && pnpm install

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
