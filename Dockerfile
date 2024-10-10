FROM node:22

WORKDIR /app

COPY package.json game.js highscore.js index.html server.js style.css ./

EXPOSE 8080

CMD ["npm", "start"]
