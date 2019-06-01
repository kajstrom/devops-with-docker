FROM ubuntu:16.04
EXPOSE 8000
COPY backend-example-docker /app
WORKDIR /app
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install
CMD FRONT_URL=http://localhost npm start