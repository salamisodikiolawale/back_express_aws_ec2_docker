FROM node:latest
RUN mkdir -p /src/app
WORKDIR /src/app
COPY package.json /src/app/package.json
RUN npm install
RUN npm install pm2 -g
COPY . /src/app
EXPOSE 3010
CMD ["pm2-runtime", "app.js"]