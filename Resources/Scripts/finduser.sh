#!/bin/bash
# Quick 1MB CMI Add-on to get uuid/username from cmi.sqlite.db
# chmod a+x the .sh script, and run it with ./finduser.sh
# version: 1.0.2 build 0.0.8 for Minecraft 1.18.1
# Release: January 2nd, 2022
# Author: Floris Fiedeldij Dop

findUser="$1"

if [ "$findUser" == "" ]; then
	echo -e "Syntax: ${0} <user|uuid> (error, missing argument)"; exit 0
elif [ $# -gt 1 ]; then
    echo -e "Syntax: ${0} <user|uuid> (error, you had too many arguments)"; exit 0
fi

[[ ${#findUser} -gt 25 ]] && findType="player_uuid" || findType="userName"

dbresult=$(sqlite3 cmi.sqlite.db "SELECT player_uuid,userName FROM \"main\".\"users\" WHERE $findType LIKE '%$findUser%' ESCAPE '\' ORDER BY \"_rowid_\" ASC LIMIT 0, 49999")
echo -e "$dbresult"

#EOF Copyright (c) 2011-2022 - Floris Fiedeldij Dop - https://scripts.1moreblock.com
