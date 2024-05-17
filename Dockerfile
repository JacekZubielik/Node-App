FROM node:alpine

ENTRYPOINT ["echo", "Hello from ${{ github.repository }}!"]

LABEL org.opencontainers.image.authors="JacekZubielik" \
      org.opencontainers.image.description="Node-app." \
      org.opencontainers.image.source="https://github.com/jacekzubielik/node-app"

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "start"]