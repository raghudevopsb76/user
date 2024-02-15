FROM        node:18
RUN         useradd roboshop
RUN         mkdir /app
WORKDIR     /app
COPY        package.json .
COPY        server.js .
RUN         npm install
ENTRYPOINT  ["node", "server.js"]
