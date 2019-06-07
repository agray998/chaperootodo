FROM node:10-alpine as build
WORKDIR /build
COPY . .
RUN npm config set registry http://$(ip route | grep default | awk '{print $3}'):8081/repository/npm-proxy
RUN npm install
RUN npm run build
FROM nginx:latest
WORKDIR /app
COPY --from=build /build/dist .
COPY nginx.conf /etc/nginx/nginx.conf
