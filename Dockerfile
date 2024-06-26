FROM node:alpine

LABEL org.opencontainers.image.authors="JacekZubielik" \
      org.opencontainers.image.description="Node-app." \
      org.opencontainers.image.source="https://github.com/jacekzubielik/node-app"

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build
EXPOSE 3000

CMD ["npm", "run", "start"]