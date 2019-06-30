FROM node:10.16.0-alpine
EXPOSE 5000
COPY frontend-example-docker /app

WORKDIR /app

RUN npm install && \
  adduser -S app && \
  chown -R app /app

USER app

CMD API_URL=http://localhost/api npm start