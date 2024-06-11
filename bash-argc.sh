#!/bin/sh
echo \$\#: $#
echo \$1: $1
echo \$2: $2
echo \$3: $3
echo \$\{3-\$1\}: ${3-$1}
echo
echo exit if less than 2 arguments:
echo "true \${2?} || exit"
true ${2?} || exit
