#!/bin/bash
clear
[[ -e /home/verpweb ]] && rm /home/verpweb
wget -P /home https://github.com/playconect/pweb/raw/painel/install/verpweb > /dev/null 2>&1
[[ -f "/home/verpweb" ]] && {
	vrs1=$(sed -n '1 p' /bin/ppweb/verpweb| sed -e 's/[^0-9]//ig')
    vrs2=$(sed -n '1 p' /home/verpweb | sed -e 's/[^0-9]//ig')
	[[ "$vrs1" != "$vrs2" ]] && mv bin/verpweb /bin/ppweb/attpweb
}
[[ -e /home/verweb ]] && rm /home/verweb
wget -P /home https://github.com/playconect/pweb/raw/painel/install/verweb > /dev/null 2>&1
[[ -f "/home/verweb" ]] && {
	vrs3=$(sed -n '1 p' /bin/ppweb/verweb| sed -e 's/[^0-9]//ig')
    vrs4=$(sed -n '1 p' /home/verweb | sed -e 's/[^0-9]//ig')
	[[ "$vrs3" != "$vrs4" ]] && mv /bin/verweb /bin/ppweb/attweb
}
