#!/bin/sh
/usr/sbin/sshd
/usr/bin/php ${WORK_DIR}pcm/fphp -s -e="$@"