#!/bin/sh

# <xbar.title>Gmail Checker</xbar.title>
# <xbar.version>v1.0.1</xbar.version>
# <xbar.author>Nadav Cohen</xbar.author>
# <xbar.author.github>nadavc</xbar.author.github>
# <xbar.desc>Checks gmail and displays inbox count</xbar.desc>
# <xbar.image>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</xbar.image>

USERNAME="GMAIL_USERNAME"
PASSWORD="GMAIL_PASSWORD"
COLOR=black
RESULT=$(curl -s -u $USERNAME:$PASSWORD "https://mail.google.com/mail/feed/atom" | egrep -o '<fullcount>[0-9]*' | cut -c 12-)

if [ "$RESULT" -ne "0" ]; then
   COLOR=red
fi

echo "📬 $RESULT|color=$COLOR"
