# WIP

## startup:
- `docker run -it snort3`
- `./snort -c ../etc/snort/snort.lua -i eth0 -l /snortlogs -v`
- `./snort -c ../etc/snort/snort.lua -R /snorty/etc/snort/test.rules -i eth0 -l /snortlogs -v`
    - `apt install -y vim curl iputils-ping`
        - `vim /snorty/etc/snort/test.rules`
            - `alert ip any any -> any any (msg:"Test alert triggered!"; sid:1000003; rev:1;)`
                - `curl -A "curl" http://google.com`

## helpful:
- `kill -9 pid`
    - `top`