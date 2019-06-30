FROM node:10.16.0-alpine as build-stage

COPY frontend-example-docker /app

WORKDIR /app

RUN npm install && \
  adduser -S app && \
  chown -R app /app && \
  API_URL=http://localhost/api npm run build

FROM nginx

WORKDIR /app

COPY --from=build-stage /app/dist /usr/share/nginx/html