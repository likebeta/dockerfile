FROM ruby:2.5.8-alpine
LABEL MAINTAINER="likebetar<ixxoo.me@gmail.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN gem sources --add https://mirrors.ustc.edu.cn/rubygems/ --remove https://rubygems.org/
RUN apk --update add --virtual build_deps build-base ruby-dev libc-dev linux-headers && \
    gem install --verbose --no-document \
    jekyll:3.8.7 \
    jekyll-sass-converter:1.5.2 \
    kramdown:1.17.0 \
    jekyll-commonmark-ghpages:0.1.6 \
    liquid:4.0.3 \
    rouge:3.19.0 \
    github-pages-health-check:1.16.1 \
    jekyll-redirect-from:0.15.0 \
    jekyll-sitemap:1.4.0 \
    jekyll-feed:0.13.0 \
    jekyll-gist:1.5.0 \
    jekyll-paginate:1.1.0 \
    jekyll-coffeescript:1.1.1 \
    jekyll-seo-tag:2.6.1 \
    jekyll-github-metadata:2.13.0 \
    jekyll-avatar:0.7.0 \
    jekyll-remote-theme:0.4.1 \
    jemoji:0.11.1 \
    jekyll-mentions:1.5.1 \
    jekyll-relative-links:0.6.1 \
    jekyll-optional-front-matter:0.3.2 \
    jekyll-readme-index:0.3.0 \
    jekyll-default-layout:0.1.4 \
    jekyll-titles-from-headings:0.5.3 \
    jekyll-swiss:1.0.0 \
    minima:2.5.1 \
    jekyll-theme-primer:0.5.4 \
    jekyll-theme-architect:0.1.1 \
    jekyll-theme-cayman:0.1.1 \
    jekyll-theme-dinky:0.1.1 \
    jekyll-theme-hacker:0.1.1 \
    jekyll-theme-leap-day:0.1.1 \
    jekyll-theme-merlot:0.1.1 \
    jekyll-theme-midnight:0.1.1 \
    jekyll-theme-minimal:0.1.1 \
    jekyll-theme-modernist:0.1.1 \
    jekyll-theme-slate:0.1.1 \
    jekyll-theme-tactile:0.1.1 \
    jekyll-theme-time-machine:0.1.1 \
    github-pages:206 \
    html-pipeline:2.12.3 \
    sass:3.7.4 \
    safe_yaml:1.0.5 \
    nokogiri:1.10.9 \
    && apk del build_deps && rm -rf /usr/lib/ruby/gems/*/cache/*.gem

CMD ["jekyll", "serve", "-s", "/gh-pages", "-H", "0.0.0.0", "--incremental"]
