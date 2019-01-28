FROM alpine:3.8

RUN apk update && \
    apk add ca-certificates && \
    update-ca-certificates

RUN wget -O release.tgz https://github.com/mimblewimble/grin/releases/download/v1.0.0/grin-v1.0.0-479973573-linux-amd64.tgz

RUN tar xvfz release.tgz && mv /grin /bin/grin

ENTRYPOINT ["grin"]
