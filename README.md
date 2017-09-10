Zerotier CentOS
===============

```
$ docker run -d --net=host --cap-add=NET_ADMIN --device=/dev/net/tun --cap-add=SYS_ADMIN -v /var/lib/zerotier-one:/var/lib/zerotier-one --name zerotier gbraad/zerotier
$ docker exec zerotier zerotier-cli info
```
