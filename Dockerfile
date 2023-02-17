FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

RUN wget -O /seedwing-policy-cli https://github.com/seedwing-io/seedwing-policy/releases/download/v0.1.0-alpha.5/seedwing-policy-cli-linux-amd64 && chmod 755 seedwing-policy-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
