FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline_php7.1_extend:latest
Maintainer Xijin Xiao (http://github.com/xiaoxijin/)


ADD ext/* /etc/php7.1/conf.d/

COPY entrypoint.sh /


EXPOSE 9566 9576
#ENTRYPOINT ["/usr/bin/php","/root/pcm/pcm.php","local"]
ENTRYPOINT ["entrypoint.sh"]
CMD ["local"]

RUN apk --update add openssh \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && sed -i s/#Port.*/Port\ 2222/ /etc/ssh/sshd_config \
  && echo "root:root" | chpasswd \
  && rm -rf /var/cache/apk/*