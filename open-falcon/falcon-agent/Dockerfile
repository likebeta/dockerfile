FROM openfalcon/falcon-plus:v0.3
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

COPY ./agent-cfg.json /open-falcon/agent/config/cfg.json

CMD ["./agent/bin/falcon-agent", "-c", "/open-falcon/agent/config/cfg.json"]
