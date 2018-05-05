set srvAddr to "47.100.165.144"
set cmdlet to "mainInt = $(networksetup -listnetworkserviceorder | awk -F'\\) ' '/\(1\)/ {print $2}') && networksetup -setdnsservers \"$mainInt\" " & srvAddr

do shell script cmdlet with  administrator privileges
do shell script "dscacheutil -flushcache" with administrator privileges
do shell script "open -a \"Safari\" \"" & "https://www.google.com/?gl=us&hl=en&pws=0&gws_rd=cr" & "\""

say "DNS service configuration successfully updated"
