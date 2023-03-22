FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

RUN curl -L --output /swio https://github.com/seedwing-io/seedwing-policy/releases/download/v0.1.0-nightly.f2ac5c6b/swio-linux-amd64 && chmod 755 /swio

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
