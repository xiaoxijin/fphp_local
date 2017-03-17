FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline_php7.1_extend:latest
Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

EXPOSE 9566 9576
ENTRYPOINT ["/usr/bin/php","/root/pcm/pcm.php","-s"]
CMD ["-e=local"]