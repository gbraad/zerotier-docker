Zerotier CentOS
===============

```
$ docker run -d \
   --name zerotier \
   --restart=always \
   --net=host \
   --cap-add=NET_ADMIN \
   --device=/dev/net/tun \
   --cap-add=SYS_ADMIN \
   -v /var/lib/zerotier-one:/var/lib/zerotier-one \
   gbraad/zerotier
$ docker exec zerotier zerotier-cli info
```

```
alias zerotier-cli='docker exec zerotier zerotier-cli'
```

