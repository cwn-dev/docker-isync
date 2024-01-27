FROM alpine:latest

RUN apk update && \ 
    apk add isync && \
    mkdir /mail_data

COPY root/ /

RUN chmod +x /start.sh

VOLUME /mail_data

ENTRYPOINT [ "/start.sh" ]