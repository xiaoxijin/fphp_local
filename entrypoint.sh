#!/bin/sh

ssh-keygen -A

# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd

/usr/bin/php /root/pcm/pcm.php "$@"



