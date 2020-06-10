FROM ubuntu:18.04
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

#ARG APT_URL=https://cdn.jsdelivr.net/gh/likebeta/cdn@master/script/apt/ubuntu-18.04.list
ARG NGROK_URL=https://likebeta.coding.net/api/share/download/33a0320b-a966-4b6e-95b5-869a412d6510
ARG DOMAIN=ngrok.pp.ua
ENV NGROK_DOMAIN=${DOMAIN}

#ADD $APT_URL /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y wget golang-go unzip && \
    cd /usr/local && wget -O ngrok.zip $NGROK_URL && unzip ngrok.zip && rm ngrok.zip && \
    cd /usr/local/ngrok && \
    openssl genrsa -out rootCA.key 2048 && \
    openssl genrsa -out server.key 2048 && \
    openssl req -x509 -new -nodes -key rootCA.key -subj "/CN=$DOMAIN" -days 5000 -out rootCA.pem && \
    openssl req -new -key server.key -subj "/CN=$DOMAIN" -out server.csr && \
    openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out server.crt -days 5000 && \
    cp rootCA.pem assets/client/tls/ngrokroot.crt && \
    cp server.crt assets/server/tls/snakeoil.crt && \
    cp server.key assets/server/tls/snakeoil.key && \
    GOOS=linux GOARCH=amd64 make release-server && \
    GOOS=linux GOARCH=amd64 make release-client && \
    GOOS=linux GOARCH=arm make release-client && \
    GOOS=windows GOARCH=amd64 make release-client && \
    GOOS=darwin GOARCH=amd64 make release-client && \
    apt-get remove wget golang-go unzip -y && \
    apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/ngrok/bin
EXPOSE 80 443 4443
CMD ["./ngrokd", "-domain=$NGROK_DOMAIN", "-httpAddr=:80", "-httpsAddr=:443", "-tunnelAddr=:4443"]
