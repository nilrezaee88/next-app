FROM node:18-alpine

WORKDIR /app

COPY package.json ./

RUN npm install 

COPY . .

EXPOSE 3000

RUN npm run build

COPY .next ./.next

CMD ["npm", "run", "start"]