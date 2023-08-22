#!/data/data/com.termux/files/usr/bin/bash

set -xe

VROOT=~/..
VTMP=$VROOT/usr/tmp
BIN_F=$VROOT/usr/bin/vncserver

# close first
${BIN_F} -list
${BIN_F} -kill :1

# clear first
rm -rf $VTMP/.X1*

# start up
${BIN_F} :1
