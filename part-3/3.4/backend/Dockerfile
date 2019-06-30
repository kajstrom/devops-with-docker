FROM node:10.16.0-alpine
EXPOSE 8000
COPY backend-example-docker /app

WORKDIR /app

RUN npm install && \
  adduser -S app && \
  chown -R app /app

USER app

CMD FRONT_URL=http://localhost npm start