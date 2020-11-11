FROM openfalcon/falcon-plus:v0.3
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

COPY ./agent-cfg.json /open-falcon/agent/config/cfg.json
COPY ./supervisord.conf /etc/supervisord.conf
COPY ./ctrl.sh /open-falcon/ctrl.sh

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
