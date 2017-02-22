FROM        alpine:3.5
RUN         apk add  --no-cache ca-certificates openssl tar && \
            wget https://github.com/coreos/etcd/releases/download/v2.3.8/etcd-v2.3.8-linux-amd64.tar.gz && \
            tar xzvf etcd-v2.3.8-linux-amd64.tar.gz && \
            mv etcd-v2.3.8-linux-amd64/etcd* /bin/ && \
            apk del --purge tar openssl && \
            rm -Rf etcd-v2.3.8-linux-amd64*
ENTRYPOINT  ["/bin/etcd"]
