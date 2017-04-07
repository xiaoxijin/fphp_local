#!/bin/sh
chmod 777 -R ${WORK_DIR}
apk --update add openssh \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && sed -i s/#Port.*/Port\ 2222/ /etc/ssh/sshd_config \
  && echo "root:root" | chpasswd \
  && rm -rf /var/cache/apk/*
ssh-keygen -A