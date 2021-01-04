FROM opsmxdev/apline-with-curl
MAINTAINER mahesh.kota@opsmx.io
RUN apk add --update coreutils && rm -rf /var/cache/apk/*
RUN apk add util-linux
COPY both_log_metric_template.json /
COPY metric_template.json /
COPY log_template.json /
COPY run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"] 
