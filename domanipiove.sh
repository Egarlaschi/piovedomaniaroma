#!/bin/bash

clear

echo "Domani piove a roma?"
echo " "

case $1 in

"")
if curl -sL -A "Mozilla/5.0" "https://www.piovedomaniaroma.it/" | grep -qi "si"; then
cat << "EOF"
  █████████   ███ 
 ███░░░░░███ ░░░  
░███    ░░░  ████ 
░░█████████ ░░███ 
 ░░░░░░░░███ ░███ 
 ███    ░███ ░███ 
░░█████████  █████
 ░░░░░░░░░  ░░░░░ 
                  
EOF
else
cat << "EOF"
 ██████   █████         
░░██████ ░░███          
 ░███░███ ░███   ██████ 
 ░███░░███░███  ███░░███
 ░███ ░░██████ ░███ ░███
 ░███  ░░█████ ░███ ░███
 █████  ░░█████░░██████ 
░░░░░    ░░░░░  ░░░░░░  
                       
EOF
fi
;;

-t|--text)
if curl -sL -A "Mozilla/5.0" "https://www.piovedomaniaroma.it/" | grep -qi "si"; then
echo "Si."
else
echo "No."
fi
;;

-w|--wttr)
PERCPIOGGIA=$(curl -s "wttr.in/Rome?format=%p+tomorrow" | grep -oE '[0-9]+' | head -1)

if [ -z "$CHANCE" ]; then
    CHANCE=0
fi

if [ "$PERCPIOGGIA" -gt 0 ]; then
cat << "EOF"
  █████████   ███ 
 ███░░░░░███ ░░░  
░███    ░░░  ████ 
░░█████████ ░░███ 
 ░░░░░░░░███ ░███ 
 ███    ░███ ░███ 
░░█████████  █████
 ░░░░░░░░░  ░░░░░ 
                  
EOF

else
cat << "EOF"
 ██████   █████         
░░██████ ░░███          
 ░███░███ ░███   ██████ 
 ░███░░███░███  ███░░███
 ░███ ░░██████ ░███ ░███
 ░███  ░░█████ ░███ ░███
 █████  ░░█████░░██████ 
░░░░░    ░░░░░  ░░░░░░  
                       
EOF
fi
;;

-h|--help|-help)
echo "-help per mostrare questo comando"
echo "-t o --text per stampare si o no senza asci art."
echo "-w o --wttr per contattare wttr.in al posto di piovedomaniaroma.it"
;;

esac
