FROM ubuntu:16.04
EXPOSE 5000
COPY frontend-example-docker /app
WORKDIR /app
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install
CMD API_URL=http://localhost:8000 npm start