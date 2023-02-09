#!/bin/bash
stty -echo
echo "Waiting for finish-background-script to finish"
while [ ! -f /tmp/background8 ]; do sleep 1; done
echo "done"
stty echo
