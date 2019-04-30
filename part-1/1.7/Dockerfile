FROM ubuntu:16.04
WORKDIR /curler
COPY curler.sh .
RUN apt-get update && apt-get install -y curl
CMD sh curler.sh