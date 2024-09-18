FROM alpine

RUN apk add --no-cache bash

WORKDIR /app

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

LABEL org.opencontainers.image.source=https://github.com/lalo1898developer/ghcr_test

ENTRYPOINT [ "/app/entrypoint.sh" ]