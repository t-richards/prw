FROM alpine:latest

RUN apk add --update --no-cache docker

COPY crontabs/root /etc/crontabs/root

# Choose how often you want to run the restore script
COPY script/restore.sh /etc/periodic/30min/restore.sh
# COPY script/restore.sh /etc/periodic/hourly/restore.sh

WORKDIR /mnt

ENTRYPOINT ["/usr/sbin/crond"]
CMD ["-f", "-l", "2"]
