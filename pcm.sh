#!/usr/bin/env bash




docker run -d --name=fphp -p 9666:9566 -p 9777:9576  -v /work/xiaoxijin/code/api_platform:/root/fphp -v /work/Configs:/root/configs