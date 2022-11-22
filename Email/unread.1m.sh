#!/bin/bash
#  <xbar.title>Mail</xbar.title>
#  <xbar.version>v1.0</xbar.version>
#  <xbar.author>Harrison Page</xbar.author>
#  <xbar.author.github>harrisonpage</xbar.author.github>
#  <xbar.desc>Show unread count from Mail.app in menubar</xbar.desc>
#  <xbar.dependencies>bash,osascript</xbar.dependencies>
#  <xbar.image>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</xbar.image>
set -e

OUTPUT=$(osascript -e 'tell Application "Mail"' -e 'unread count of inbox' -e 'end tell')

if [[ $OUTPUT -gt 0 ]]
then
  echo -n "📬"
else
  echo -n "📪"
fi
echo " ${OUTPUT}"
