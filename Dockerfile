FROM alpine:edge
MAINTAINER Daniel Guerra
RUN apk add --update --no-cache privoxy
ADD bin /bin
ADD privoxy /etc/privoxy
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["start.sh"]
