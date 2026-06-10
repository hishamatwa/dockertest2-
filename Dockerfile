FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev --no-audit --no-fund

COPY . .

ENV PORT=5006

EXPOSE 5006

CMD ["npm", "start"]
