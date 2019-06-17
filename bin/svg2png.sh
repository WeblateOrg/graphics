#!/bin/sh
set -e

if [ $# -lt 7 ] ; then
    echo "Usage: svg2png.sh image.svg image.png width height background-opacity background-color colors"
    exit 1
fi

SOURCE="$1"
OUTPUT="$2"
WIDTH="$3"
HEIGHT="$4"
BACKGROUND_OP="$5"
BACKGROUND_COL="$6"
COLORS="$7"
shift 7

inkscape $SOURCE --export-width=$WIDTH --export-background-opacity=$BACKGROUND_OP --export-background=$BACKGROUND_COL --export-height=$HEIGHT --export-png=tmp.png "$@"
if [ -z "$COLORS" ] ; then
    cp tmp.png tmp-nq8.png
else
    pngnq -s 1 -f -n $COLORS tmp.png
fi
rm -f $OUTPUT
zopflipng -m tmp-nq8.png $OUTPUT
rm tmp.png tmp-nq8.png
