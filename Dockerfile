FROM node:lts-slim

WORKDIR /app

COPY src/package*.json ./
RUN npm install

COPY src/ .

RUN mkdir -p logs && chown -R node:node logs

USER usri2btech
EXPOSE 8080

CMD ["node", "index.js"]