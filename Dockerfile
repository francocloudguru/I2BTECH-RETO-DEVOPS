FROM node:lts-slim

WORKDIR /app

COPY src/package*.json ./
RUN npm install --only=production

COPY src/ .

RUN mkdir -p logs && chown -R node:node logs

USER node
EXPOSE 8080

CMD ["node", "index.js"]