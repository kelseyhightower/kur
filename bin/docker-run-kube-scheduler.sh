$ docker run --detach --net=host --name=kube-scheduler \
    --restart=always \
    --volume=/etc/kubernetes:/etc/kubernetes \
    --volume=/usr/share/ca-certificates/:/etc/ssl/certs \
    kelseyhightower/kube-scheduler:0.20.0 \
    --logtostderr=true \
    --master=http://127.0.0.1:8080 \
    --v=2