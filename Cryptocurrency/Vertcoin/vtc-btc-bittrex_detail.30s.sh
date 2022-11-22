#!/bin/bash

# <xbar.title>Vertcoin BTC price at Bittrex</xbar.title>
# <xbar.version>v1.0</xbar.version>
# <xbar.author>Cem Yildirim</xbar.author>
# <xbar.author.github>cemyld</xbar.author.github>
# <xbar.desc>Shows the last Vertcoin price (in BTC) on the Bittrex exchange.</xbar.desc>
# <xbar.image>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</xbar.image>
# <xbar.abouturl>https://www.vertcoin.org/bitbar.abouturl>
#
BitBarDarkMode=${BitBarDarkMode}


vtcIconBase64="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"
RESULT=$(curl -s "https://bittrex.com/api/v1.1/public/getmarketsummary?market=btc-vtc")
vtcLast=$(echo "$RESULT" | egrep -o '"Last":\d+\.?\d{0,5}' | sed 's/"Last"://')

printf "%.*f | templateImage=%s\n" 5 "$vtcLast" "$vtcIconBase64"
echo "---"
echo -n "Ask "; echo -n "$RESULT" | egrep -o '"Ask":\d+\.?\d{0,6}' | sed 's/"Ask"://' | sed 's/$/Ƀ/';
echo -n "Bid "; echo "$RESULT" | egrep -o '"Bid":\d+\.?\d{0,6}' | sed 's/"Bid"://' | sed 's/$/Ƀ/';
echo -n "Low "; echo "$RESULT" | egrep -o '"Low":\d+\.?\d{0,6}' | sed 's/"Low"://' | sed 's/$/Ƀ/';
echo -n "High "; echo "$RESULT" | egrep -o '"High":\d+\.?\d{0,6}' | sed 's/"High"://' | sed 's/$/Ƀ/';
echo -n "Volume "; echo "$RESULT" | egrep -o '"Volume":\d+\.?\d{0,2}' | sed 's/"Volume"://' | sed 's/$/Ƀ/';
echo -n "Updated At "; date  +"%F %T"
echo "Live Graph | href=\"https://bittrex.com/Market/Index?MarketName=BTC-VTC\""
