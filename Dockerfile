FROM almalinux:8
LABEL "maintainer"="bpicode"

LABEL "com.github.actions.name"="github-action-fpm"
LABEL "com.github.actions.description"="Build packages for multiple platforms using github.com/jordansissel/fpm"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

RUN dnf -y module enable ruby:3.1 \
    && dnf -y install ruby ruby-devel gcc make redhat-rpm-config \
    && gem install --no-document fpm \
    && dnf clean all

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
