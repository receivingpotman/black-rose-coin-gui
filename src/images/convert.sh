#!/bin/bash
infile=$(echo "$1" | sed -E 's/\.png//g')
echo "Making icons for $infile"

mkdir icon.iconset

sips $1 -Z 1024 --out icon.iconset/icon_512x512@2x.png
sips $1 -Z 512 --out icon.iconset/icon_512x512.png
sips $1 -Z 512 --out icon.iconset/icon_256x256@2x.png
sips $1 -Z 256 --out icon.iconset/icon_256x256.png
sips $1 -Z 256 --out icon.iconset/icon_128x128@2x.png
sips $1 -Z 128 --out icon.iconset/icon_128x128.png
sips $1 -Z 64 --out icon.iconset/icon_32x32@2x.png
sips $1 -Z 32 --out icon.iconset/icon_32x32.png
sips $1 -Z 32 --out icon.iconset/icon_16x16@2x.png
sips $1 -Z 16 --out icon.iconset/icon_16x16.png

sips $1 -Z 512 --out iTunesArtwork@1x.png
sips $1 -Z 1024 --out iTunesArtwork@2x.png
sips $1 -Z 1536 --out iTunesArtwork@3x.png

iconutil -c icns icon.iconset
