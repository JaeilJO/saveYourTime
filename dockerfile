FROM node:18-alpine 

EXPOSE 3000

WORKDIR /app

COPY package.json package-lock.json* ./
COPY . .

RUN npm ci


RUN npm run dev