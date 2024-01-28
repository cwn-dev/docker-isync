FROM alpine:latest

COPY root/ /

RUN apk update && \ 
    apk add isync supercronic && \
    addgroup -S app && \
    adduser -S app -G app && \
    chmod +x /start.sh && \
    chown -R 1000:1000 /home/app

USER app

VOLUME /home/app/mail_data

ENTRYPOINT [ "/start.sh" ]