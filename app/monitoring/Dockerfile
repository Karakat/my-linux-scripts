FROM alpine:3.19
RUN apk add --no-cache bash
WORKDIR /app
COPY healthcheck.sh /usr/local/bin/healthcheck.sh
RUN chmod +x /usr/local/bin/healthcheck.sh
CMD ["/usr/local/bin/healthcheck.sh"]