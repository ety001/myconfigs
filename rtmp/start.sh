#!/bin/bash

docker run -itd \
	--restart always \
	-p 1935:1935 \
	--name nginx-rtmp \
	tiangolo/nginx-rtmp
