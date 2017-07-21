#!/bin/bash
echo "Linux Team";
bash ~/tool-belt/check-logs-dir.sh
echo "Connecting to server $1...";
HostToConnect="$HOME/.tool-belt/hosts/$1";
if [ ! -f "$HostToConnect" ]; then
echo "Server not included yet, please record username:";
read username;
echo $username > $HostToConnect;
fi
LoginName="`cat $HostToConnect`";
echo "Using login id: $LoginName...";
script -c "ssh -l $LoginName $1" -f $"$HOME/.tool-belt/AccessLogs/$(date +"%Y")/$(date +"%F_%H-%M-%S")-$1.log";
