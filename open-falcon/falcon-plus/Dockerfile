FROM openfalcon/falcon-plus:v0.3
LABEL MAINTAINER="likebeta<ixxoo.me@gmail.com>"

COPY ./supervisord.conf /etc/supervisord.conf
COPY ./ctrl.sh /open-falcon/ctrl.sh

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
