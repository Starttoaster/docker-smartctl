FROM alpine:3.9.3
LABEL maintainer="Brandon Butler bmbawb@gmail.com"

RUN apk update && \
    apk add --no-cache smartmontools tzdata

COPY scripts ./
VOLUME /logs

CMD /bin/sh /parent.sh
