#!/bin/sh
set -eu

project_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
wizard_image="$project_root/public/assets/pvm-wizard-apparition.png"
output_image="$project_root/public/social-card.png"
mono_font='/System/Library/Fonts/SFNSMono.ttf'
ui_font='/System/Library/Fonts/Supplemental/Arial.ttf'

# Reconstruct the original flattened poster with the site's existing system-font
# choices and the exact tracked wizard apparition used by the site.
magick -size 1200x630 xc:'#020302' \
  -fill '#060806' -stroke '#273128' -strokewidth 2 -draw 'rectangle 38,38 1162,592' \
  -fill '#a95473' -stroke none -draw 'rectangle 38,38 96,42' \
  -fill '#172017' -draw 'rectangle 96,38 1162,42' \
  -fill '#91bd78' -font "$mono_font" -pointsize 27 -draw 'text 82,102 "ITSCOL.ES / PUBLIC NODE"' \
  -fill '#d9d7ca' -font "$ui_font" -pointsize 72 -draw 'text 78,237 "COLE PEARSON"' \
  -fill '#91bd78' -font "$mono_font" -pointsize 27 -draw 'text 82,309 "SENIOR SOFTWARE ENGINEER"' \
  -fill '#aeb3aa' -pointsize 22 -draw 'text 82,360 "FULL STACK / PLATFORM ENGINEER"' \
  -pointsize 19 -draw 'text 82,400 "SOFTWARE • SYSTEMS • DATA • INFRASTRUCTURE"' \
  -fill '#bc6688' -pointsize 22 -draw 'text 82,526 "> JUST AN OLD WIZARD."' \
  \( "$wizard_image" -resize 535x535 \) -geometry +626+67 -composite \
  -fill 'rgba(0,0,0,0.10)' -stroke none -draw 'rectangle 38,38 1162,592' \
  -define png:color-type=2 "$output_image"

printf '%s\n' "$output_image"
