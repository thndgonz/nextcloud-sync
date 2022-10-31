FROM alpine:latest
RUN apk add --no-cache cifs-utils rsync bash busybox-initscripts
COPY sync.sh /scripts/
COPY entrypoint.sh /scripts/
RUN chmod +x /scripts/sync.sh
RUN chmod +x /scripts/entrypoint.sh
RUN echo "* */12 * * * /bin/bash /scripts/sync.sh" >> /var/spool/cron/crontabs/root
ENV SOURCE_FOLDER=/var/www/html
ENV DESTINATION_FOLDER=/backup/Nextcloud
ENTRYPOINT [ "/scripts/entrysync.sh" ]