#!/bin/sh

sudo docker run -d --restart always --name falcon-agent \
        -e NUX_ROOTFS=/rootfs \
        -v /:/rootfs:ro \
        openfalcon/falcon-plus:v0.3 \
        ./agent/bin/falcon-agent -c /open-falcon/agent/config/cfg.json
