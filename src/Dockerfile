FROM debian:bookworm-slim

RUN apt update && \ 
    apt install isync cron && \
    rm -rf /tmp/* /var/tmp/* && \
    adduser --disabled-password --gecos "" app && \
    mkdir /mail_data

COPY root/ /

RUN chmod +x /start.sh

VOLUME /mail_data

ENTRYPOINT [ "/start.sh" ]