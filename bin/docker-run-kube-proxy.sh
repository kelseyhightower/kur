docker run --detach --net=host --name=kube-proxy --privileged \
    --restart=always \
    --volume=/usr/share/ca-certificates:/etc/ssl/certs \
    --volume=/usr:/usr \
    --volume=/lib64:/lib64 \
    --volumes-from=kube-proxy-conf-0.0.1 \
    kelseyhightower/kube-proxy:0.20.0 \
    --kubeconfig=/etc/kubernetes/kubeconfig \
    --logtostderr=true