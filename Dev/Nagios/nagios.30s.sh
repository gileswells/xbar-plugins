#!/bin/bash

# <xbar.title>Nagios Prod</xbar.title>
# <xbar.version>v1.0</xbar.version>
# <xbar.author>Rob DeSanno</xbar.author>
# <xbar.author.github>rdesanno</xbar.author.github>
# <xbar.desc>Nagios status summary</xbar.desc>
# <xbar.image>http://i.imgur.com/JWl2pXx.png</xbar.image>
# <xbar.dependencies>bash</xbar.dependencies>

## set variables

URL="{set your nagios url here}"  			# ie nagios.example.com
NAME="{username}" 					# username
PASSWORD="{password}"					# password

TEMP_FILE="/tmp/nagios.out"
TAC="tac.cgi"
STATUS="status.cgi"
DOWN="?hostgroup=all&style=hostdetail&hoststatustypes=4&hostprops=42"
CRITICAL="?host=all&style=detail&servicestatustypes=16"
WARNING="?host=all&style=detail&servicestatustypes=4"
UNKNOWN="?host=all&style=detail&servicestatustypes=8"
OK="?host=all&style=detail&servicestatustypes=2"

curl -s -u "$NAME:$PASSWORD" "https://$URL/nagios/cgi-bin/$TAC" > $TEMP_FILE

down=$(grep "$DOWN" $TEMP_FILE | grep Down | cut -d\> -f3 | cut -d\< -f1)
critial=$(grep "$CRITICAL" $TEMP_FILE | grep Critical | cut -d\> -f3 | cut -d\< -f1)
warning=$(grep "$WARNING" $TEMP_FILE | grep Warning | cut -d\> -f3 | cut -d\< -f1)
unknown=$(grep "$UNKNOWN" $TEMP_FILE | grep Unknown | cut -d\> -f3 | cut -d\< -f1)
ok=$(grep "$OK" $TEMP_FILE | grep Ok | cut -d\> -f3 | cut -d\< -f1)

echo "$down | color=purple href=https://$URL/nagios/cgi-bin/$STATUS/$DOWN"
echo "$critial | color=red href=https://$URL/nagios/cgi-bin/$STATUS/$CRITICAL"
echo "$warning | color=brown href=https://$URL/nagios/cgi-bin/$STATUS/$WARNING"
echo "$unknown | color=orange href=https://$URL/nagios/cgi-bin/$STATUS/$UNKNOWN"
echo "$ok | color=green href=https://$URL/nagios/cgi-bin/$STATUS/$OK"
