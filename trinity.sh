#!/bin/bash
#
# Author: DerFredy | @4llfr33d0m:matrix.org
# Author: W1m3l    | @cosmaut:matrix.org
#
if pgrep -x "trinity" > /dev/null
then
    echo "trinity is runing"
else
    echo "Restart trinity"
    tmux kill-server
    tmux new-session -s "trinity" -d -n "main"
    tmux send-keys  -t "trinity:main" C-Z 'trinity' Enter
    echo "gaiad restart"
fi
