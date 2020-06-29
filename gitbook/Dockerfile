FROM node:12.18.1-alpine
LABEL MAINTAINER="likebetar<ixxoo.me@gmail.com>"

RUN npm config set registry https://registry.npm.taobao.org
RUN npm install -g gitbook-cli && gitbook fetch && npm cache clean --force && mkdir /gitbook

WORKDIR /gitbook
EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook", "/tmp"]
