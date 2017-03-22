FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline_php7.1_extend:latest
Maintainer Xijin Xiao (http://github.com/xiaoxijin/)


ADD ext/* /etc/php7.1/conf.d/
ADD install.sh /work/
COPY entrypoint.sh /work/

RUN sh /work/install.sh

EXPOSE 9566 9576
#ENTRYPOINT ["/usr/bin/php","/root/pcm/pcm.php","local"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["local"]
