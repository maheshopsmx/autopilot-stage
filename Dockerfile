FROM opsmxdev/apline-with-curl
MAINTAINER mahesh.kota@opsmx.io
RUN apk add --update coreutils && rm -rf /var/cache/apk/*
RUN apk add util-linux
COPY run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
