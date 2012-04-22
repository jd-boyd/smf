#!/bin/sh

set -x

if [ ! -f /etc/postfix/aliases.dir ]; then
  /usr/bin/newaliases
fi

exec /usr/sbin/postfix "$@"
