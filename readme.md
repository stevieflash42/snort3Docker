# WIP

## startup:
- `docker run --rm -it --cap-add=NET_ADMIN --cap-add=SYS_PTRACE --net=host snort3`
    - `ip link set eth0 promisc on`

- `./snort -c ../etc/snort/snort.lua -i eth0 -l /snortlogs -v`
- `./snort -c ../etc/snort/snort.lua -R /snorty/etc/snort/test.rules -i eth0 -l /snortlogs -v`
    - `apt install -y vim curl iputils-ping net-tools tcpdump traceroute mtr`
        - `vim /snorty/etc/snort/test.rules`
            - `alert ip any any -> any any (msg:"Test alert triggered!"; sid:1000003; rev:1;)`
                - `curl -A "curl" http://google.com`

- `./snort -c ../etc/snort/snort.lua -R /snorty/etc/snort/test.rules -i eth0 -A alert_fast`

## helpful:
- uncomment `alert_fast = { }` and `alert_full = { }` in snort.lua
- `pkill -9 snort3`
- `vim /snorty/etc/snort/snort.lua`

<br/>
<br/>
<br/>

# TODO:
- Pull lua from config directory
- Pull rules from config directory
- Volume mount logging