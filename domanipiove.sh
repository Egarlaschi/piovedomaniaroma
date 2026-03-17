#!/bin/bash

PERCPIOGGIA=$(curl -s "wttr.in/Rome?format=%p+tomorrow" | grep -oE '[0-9]+' | head -1)

if [ -z "$CHANCE" ]; then
    CHANCE=0
fi

echo "Domani piove a roma?"
echo " "

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
