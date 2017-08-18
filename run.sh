#!/bin/bash
if [ ! -f /.container_init ]; then
	/container_init.sh
fi

chmod 1777 /dev/shm

exec /bin/bash
