FROM ubuntu:18.04
LABEL maintainer="Brandon Butler bmbawb@gmail.com"

RUN apt update && \
    echo "1" | apt install smartmontools -y --no-install-recommends && \
    apt-get clean && \
    apt autoremove && \
    rm -rf /var/lib/apt/lists/*   

COPY scripts ./
VOLUME /logs

CMD /bin/bash /parent.sh
