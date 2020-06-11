FROM node:12.18.0-alpine
LABEL MAINTAINER="likebetar<ixxoo.me@gmail.com>"

RUN npm install -g gitbook-cli && gitbook fetch && npm cache clean --force && mkdir /gitbook
#RUN npm install -g gitbook-cli --registry=https://registry.npm.taobao.org && gitbook fetch && npm cache clean --force && mkdir /gitbook

WORKDIR /gitbook
EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook", "/tmp"]
