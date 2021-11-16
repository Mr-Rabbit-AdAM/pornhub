#!/bin/bash
clear 
p=1
echo -e "\e[1;31m 

███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗███╗   ███╗ █████╗ ██████╗ ███████╗
████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝████╗ ████║██╔══██╗██╔══██╗██╔════╝
██╔██╗ ██║██║██║  ███╗███████║   ██║   ██╔████╔██║███████║██████╔╝█████╗  
██║╚██╗██║██║██║   ██║██╔══██║   ██║   ██║╚██╔╝██║██╔══██║██╔══██╗██╔══╝  
██║ ╚████║██║╚██████╔╝██║  ██║   ██║   ██║ ╚═╝ ██║██║  ██║██║  ██║███████╗
╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
                              
\e[0m"

echo ""

echo -e "\e[1;34m            Code By PyaeSoneHmoo (Ad A M ) \e[0m"
echo ""
read  -p "Enter Category :: " pa 
echo ""
echo -e "\e[1;33m If you want to stop (CTRL + C ) \e[0m"

video=$(curl -s "https://www.pornhub.com/video/search?search=$pa&page=$p" -L | grep -oP '<a href="/view_video\K[^ ]+"' | cut -d '"' -f1 | sort -u > res.txt)
videonya=$(curl -s "https://www.pornhub.com/video/search?search=$pa&page=$p" -L | grep -oP '<a href="/view_video\K[^ ]+"' | cut -d '"' -f1)

title=$(curl -s "https://www.pornhub.com/video/search?search=$pa&page=$p" -L | grep -oP '<a href="/view_video\K[^ ]+" title="(.*?)"' | cut -d '"' -f3 | sort -u > title.txt)
if [[ -z $videonya ]];then
echo -e "\e[1;31m You check the internet \e[0m"
else 
for i in $(seq $(cat res.txt | wc -l ))
do 
echo ""
sleep 2 
echo -e "\e[1;32m [#] Title :: "$(cat title.txt | sed -n "${i}p" )
echo -e "\e[1;32m [#] Link :: https://www.pornhub.com/view_video"$(cat res.txt | sed -n "${i}p" )
echo ""
done 
rm -rf res.txt 
rm -rf title.txt 
fi 
