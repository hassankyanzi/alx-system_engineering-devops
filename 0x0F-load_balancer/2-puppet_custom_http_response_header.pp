#!/usr/bin/env bash
#configures a new Ubuntu machine nginx
apt-get update
apt-get install software-properties-common -y
add-apt-repository ppa:vbernat/haproxy-1.7 -y
apt-get update
apt-get install haproxy=1.7.\* -y
echo "frontend web-front
        bind *:80
        default_backend web-backend

backend web-backend
        balance roundrobin
        server 68597-web-01 18.204.8.93 check
        server 68597-web-02 54.167.152.52 check
" | sudo tee -a /etc/haproxy/haproxy.cfg
sudo service haproxy start