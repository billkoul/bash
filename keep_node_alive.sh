#!/usr/bin/bash
if ps -ef | grep -v grep | grep script_name.js ; then
        exit 0
else
        /usr/local/bin/node /path/to/Node/script_name.js
        exit 0
fi
