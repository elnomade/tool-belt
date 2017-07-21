#!/bin/bash
echo "Linux Team"
bash ~/tool-belt/check-logs-dir.sh
echo "Connecting to server $1...";
echo "Using login id: Root...";
script -c "ssh -l root $1" -f $"$HOME/.tool-belt/AccessLogs/$(date +"%Y")/$(date +"%F_%H-%M-%S")-$1.log";
