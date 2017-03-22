#!/bin/sh



# do not detach (-D), log to stderr (-e), passthrough other arguments
/usr/sbin/sshd

/usr/bin/php /root/pcm/pcm.php "$@"



