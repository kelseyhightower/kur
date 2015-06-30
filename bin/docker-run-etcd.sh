$ docker run --detach --net=host --privileged --name=etcd \
    --restart=always \
    --volume=/var/lib/etcd:/var/lib/etcd \
    --volume=/usr/share/ca-certificates/:/etc/ssl/certs \
    quay.io/coreos/etcd:v2.0.13 \
    --advertise-client-urls http://127.0.0.1:2379 \
    --data-dir /var/lib/etcd \
    --listen-client-urls http://127.0.0.1:2379 \
    --listen-peer-urls http://127.0.0.1:2380 \
    --name etcd0
