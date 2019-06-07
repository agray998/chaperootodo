FROM node:10-alpine
WORKDIR /app
COPY . .
RUN npm config set registry http://$(ip route | grep default | awk '{print $3}'):8081/repository/npm-proxy
RUN npm install
EXPOSE 8080
ENTRYPOINT [ "/usr/local/bin/npm", "run", "serve"]