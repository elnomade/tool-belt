#!/bin/bash
echo "Checking Directories"
DIRECTORY="$HOME/.tool-belt/AccessLogs/$(date +"%Y")";
if [ ! -d "$DIRECTORY" ]; then
mkdir -p $DIRECTORY;
fi
DIRECTORY="$HOME/.tool-belt/hosts";
if [ ! -d "$DIRECTORY" ]; then
mkdir -p $DIRECTORY;
fi
