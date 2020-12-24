FROM golang:1.15-alpine as builder
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

ARG NGROK_URL=https://likebeta.coding.net/api/share/download/33a0320b-a966-4b6e-95b5-869a412d6510
ARG DOMAIN=ngrok.pp.ua

WORKDIR /

RUN wget -qO ngrok.zip ${NGROK_URL} && unzip ngrok.zip && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    apk add --update openssl make && \
    mkdir -p /ngrok/keys && cd /ngrok/keys && \
    openssl genrsa -out rootCA.key 2048 && \
    openssl genrsa -out server.key 2048 && \
    openssl req -x509 -new -nodes -key rootCA.key -subj "/CN=$DOMAIN" -days 5000 -out rootCA.pem && \
    openssl req -new -key server.key -subj "/CN=$DOMAIN" -out server.csr && \
    openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -days 5000 -out server.crt

WORKDIR /ngrok
RUN cp keys/rootCA.pem assets/client/tls/ngrokroot.crt && \
    cp keys/server.crt assets/server/tls/snakeoil.crt && \
    cp keys/server.key assets/server/tls/snakeoil.key && \
    GOOS=linux GOARCH=amd64 make release-server && \
    GOOS=linux GOARCH=arm make release-client && \
    GOOS=windows GOARCH=amd64 make release-client && \
    GOOS=darwin GOARCH=amd64 make release-client && \
    GOOS=linux GOARCH=amd64 make release-client

FROM alpine
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

ARG DOMAIN=ngrok.pp.ua

COPY --from=builder /ngrok/bin/ngrokd /ngrok/ngrokd
WORKDIR /ngrok
EXPOSE 80 443 4443
CMD ["./ngrokd", "-domain=$DOMAIN", "-httpAddr=:80", "-httpsAddr=:443", "-tunnelAddr=:4443"]
