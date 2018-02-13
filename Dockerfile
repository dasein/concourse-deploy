FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache \
    openssh

RUN mkdir -p /keys/web /keys/worker /stage-keys/worker /stage-keys/web

VOLUME /keys

RUN ssh-keygen -t rsa -f /stage-keys/web/tsa_host_key -N '' \
  && ssh-keygen -t rsa -f /stage-keys/web/session_signing_key -N '' \
  && ssh-keygen -t rsa -f /stage-keys/worker/worker_key -N '' \
  && cp /stage-keys/worker/worker_key.pub /stage-keys/web/authorized_worker_keys \
  && cp /stage-keys/web/tsa_host_key.pub /stage-keys/worker

CMD cp -R /stage-keys/* /keys/.
