FROM docker:18-git

WORKDIR /build

COPY build-publish.sh /build/build-publish.sh

RUN apk update && apk add bash

ENTRYPOINT [ "./build-publish.sh" ]