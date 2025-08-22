# WIP

## startup:
- `docker run --rm -it --cap-add=NET_ADMIN snort3`
    - `ip link set eth0 promisc on`

- `./snort -c ../etc/snort/snort.lua -i eth0 -l /snortlogs -v`
- `./snort -c ../etc/snort/snort.lua -R /snorty/etc/snort/test.rules -i eth0 -l /snortlogs -v`
    - `apt install -y vim curl iputils-ping net-tools tcpdump`
        - `vim /snorty/etc/snort/test.rules`
            - `alert ip any any -> any any (msg:"Test alert triggered!"; sid:1000003; rev:1;)`
                - `curl -A "curl" http://google.com`

- `./snort -c ../etc/snort/snort.lua -R /snorty/etc/snort/test.rules -i eth0 -A alert_fast`

## helpful:
- `pkill -9 snort3`
- `vim /snorty/etc/snort/snort.lua`