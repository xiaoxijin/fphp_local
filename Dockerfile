FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/pcm_dev:latest
Maintainer Xijin Xiao (http://github.com/xiaoxijin/)



ADD install.sh /work/
COPY entrypoint.sh /work/

RUN sh /work/install.sh

EXPOSE 9566 9576
#ENTRYPOINT ["/usr/bin/php","/root/pcm/pcm.php","local"]
ENTRYPOINT ["/work/entrypoint.sh"]
CMD ["local"]
