FROM tile38/tile38

RUN apk add --update --no-cache netcat-openbsd
ADD killable-server.sh .

EXPOSE 8986

CMD ["/bin/sh", "killable-server.sh"]
