FROM golang:1.16rc1-buster

LABEL "name"="Golang workflow" \
    "maintainer"="Taro <hogehoge@example.com>" \
    "com.github.actions.icon"="code" \
    "com.github.actions.color"="green-dark" \
    "com.github.actions.name"="golang　workflow" \
    "com.github.actions.description"="This is an Action to run go and golangci-lint commands."

ENV LINT_VERSION="v1.36.0"

COPY entrypoint.sh /entrypoint.sh

RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin ${LINT_VERSION} \
  && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]