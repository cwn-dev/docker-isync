FROM alpine:latest

RUN apk update && \ 
    apk add isync && \
    mkdir -p /etc/periodic/5min

COPY root/ /

RUN chmod +x /start.sh

RUN addgroup -S app && adduser -S app -G app
USER app
RUN mkdir /home/app/mail_data

USER root
VOLUME /home/app/mail_data

ENTRYPOINT [ "/start.sh" ]