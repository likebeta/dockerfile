#!/bin/sh

sudo docker run -itd --restart always --name falcon-agent \
        --network falcon \
        -p 1999:1988 \
        -e NUX_ROOTFS=/rootfs \
        -v /:/rootfs:ro \
        falcon-agent
