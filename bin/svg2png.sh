#!/bin/sh
set -e

if [ $# -ne 7 ] ; then
    echo "Usage: svg2png.sh image.svg image.png width height background-opacity background-color colors"
    exit 1
fi

inkscape $1 --export-width=$3 --export-background-opacity=$5 --export-background=$6 --export-height=$4 --export-png=tmp.png
pngnq -s 1 -f -n $7 tmp.png
zopflipng -m tmp-nq8.png $2
rm tmp.png tmp-nq8.png
