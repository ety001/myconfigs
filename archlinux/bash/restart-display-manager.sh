#!/bin/bash

tag_file=/tmp/has_restart_displaymanager

if [ -e "/dev/displaylink" ]; then
	echo "connected display link"
	if [ -e "${tag_file}" ]; then
		exit
	fi
	touch ${tag_file}
	sudo systemctl restart display-manager
fi
