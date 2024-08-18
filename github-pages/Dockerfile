FROM ruby:3.3.4-alpine
LABEL MAINTAINER="likebetar<ixxoo.me@gmail.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN gem sources --add https://mirrors.ustc.edu.cn/rubygems/ --remove https://rubygems.org/
RUN apk --update add --virtual build_deps build-base ruby-dev libc-dev linux-headers && \
    gem install --verbose --no-document \
    jekyll:3.10.0 \
    github-pages-health-check:1.18.2 \
    github-pages:232 \
    html-pipeline:2.14.3 \
    jekyll-avatar:0.8.0 \
    jekyll-coffeescript:1.2.2 \
    jekyll-commonmark-ghpages:0.5.1 \
    jekyll-default-layout:0.1.5 \
    jekyll-feed:0.17.0 \
    jekyll-gist:1.5.0 \
    jekyll-github-metadata:2.16.1 \
    jekyll-include-cache:0.2.1 \
    jekyll-mentions:1.6.0 \
    jekyll-optional-front-matter:0.3.2 \
    jekyll-paginate:1.1.0 \
    jekyll-readme-index:0.3.0 \
    jekyll-redirect-from:0.16.0 \
    jekyll-relative-links:0.6.1 \
    jekyll-remote-theme:0.4.3 \
    jekyll-sass-converter:1.5.2 \
    jekyll-seo-tag:2.8.0 \
    jekyll-sitemap:1.4.0 \
    jekyll-swiss:1.0.0 \
    jekyll-theme-architect:0.2.0 \
    jekyll-theme-cayman:0.2.0 \
    jekyll-theme-dinky:0.2.0 \
    jekyll-theme-hacker:0.2.0 \
    jekyll-theme-leap-day:0.2.0 \
    jekyll-theme-merlot:0.2.0 \
    jekyll-theme-midnight:0.2.0 \
    jekyll-theme-minimal:0.2.0 \
    jekyll-theme-modernist:0.2.0 \
    jekyll-theme-primer:0.6.0 \
    jekyll-theme-slate:0.2.0 \
    jekyll-theme-tactile:0.2.0 \
    jekyll-theme-time-machine:0.2.0 \
    jekyll-titles-from-headings:0.5.3 \
    jemoji:0.13.0 \
    kramdown-parser-gfm:1.1.0 \
    kramdown:2.4.0 \
    liquid:4.0.4 \
    minima:2.5.1 \
    nokogiri:1.16.7 \
    rouge:3.30.0 \
    safe_yaml:1.0.5 \
    sass:3.7.4 \
    && apk del build_deps && rm -rf /usr/lib/ruby/gems/*/cache/*.gem

CMD ["jekyll", "serve", "-s", "/gh-pages", "-H", "0.0.0.0", "--incremental"]
