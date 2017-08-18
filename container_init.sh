#!/bin/bash

if [ -f /.container_init ]; then
	echo "container already initialized!"
	exit 0
fi

if [ ! -z "${EXTRA_PACKAGES// }" ]; then
    apt-get install -y $EXTRA_PACKAGES
fi

touch /.container_init

