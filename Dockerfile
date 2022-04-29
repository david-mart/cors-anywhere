# Install dependencies only when needed
FROM node:16-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i 

COPY . .

EXPOSE 8080

ENV PORT 8080

CMD ["node", "server.js"]