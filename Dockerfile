FROM ruby:alpine
LABEL "maintainer"="bpicode"

LABEL "com.github.actions.name"="fpm"
LABEL "com.github.actions.description"="Build packages for multiple platforms using github.com/jordansissel/fpm"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

RUN apk add build-base
RUN apk add tar
RUN apk add zip
RUN gem install --no-document fpm -v 1.11.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
