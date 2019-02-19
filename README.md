# bash
Simple sysadmin scripts in bash

1) server_load_check.sh
This scripts checks for server load and sends an email if load is greater than trigger. Can be used with cron.

2) keeps script_name.js node service alive can be used along with the following cron:

    * * * * * cd /path/to && ./keep_node_alive.sh >/dev/null 1>&1
