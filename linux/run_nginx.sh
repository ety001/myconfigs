docker run -itd --name nginx \
       -v /home/ety001/myconfigs/linux/nginx:/etc/nginx \
       -v /home/ety001/workspace/wwwroot:/data/wwwroot \
       -v /data/logs/nginx:/var/log/nginx \
       -p 80:80 -p 443:443 \
       --restart always \
       -l "ink.akawa.nginx" \
       -v /tmp:/tmp \
       --network lnmp --ip "172.20.0.2" nginx
