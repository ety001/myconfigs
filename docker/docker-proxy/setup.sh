mkdir -p /etc/systemd/system/docker.service.d
cp /data/server-conf/docker-proxy/http-proxy.conf /etc/systemd/system/docker.service.d/http-proxy.conf
systemctl daemon-reload
systemctl restart docker
systemctl show --property=Environment docker
