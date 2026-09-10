#!/bin/sh
set -eu

project_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
source_image="$project_root/reference/signalbox-screenshot.png"
output_image="$project_root/public/signalbox-social-card.png"
work_image=$(mktemp "${TMPDIR:-/tmp}/signalbox-card.XXXXXX.png")
mono_font='/System/Library/Fonts/SFNSMono.ttf'
ui_font='/System/Library/Fonts/Supplemental/Arial Bold.ttf'
trap 'rm -f "$work_image"' EXIT

# Preserve the application pixels exactly: remove only the macOS window chrome,
# then scale the screenshot into the card's CRT-style project viewport.
magick "$source_image" -crop 1094x786+20+53 +repage -resize 650x467\> "$work_image"

magick -size 1200x630 xc:'#020302' \
  -fill '#060806' -stroke '#273128' -strokewidth 2 -draw 'rectangle 38,38 1162,592' \
  -fill '#74334f' -stroke none -draw 'rectangle 38,38 118,42' \
  -fill '#172017' -draw 'rectangle 118,38 1162,42' \
  -fill '#779b68' -font "$mono_font" -pointsize 24 -draw 'text 82,102 "ITSCOL.ES / PROJECT NODE"' \
  -fill '#cbc9bd' -font "$ui_font" -pointsize 58 -draw 'text 80,208 "SIGNALBOX"' \
  -fill '#779b68' -font "$mono_font" -pointsize 23 -weight 400 -draw 'text 82,262 "MODERN TERMINAL"' \
  -draw 'text 82,296 "CLIENT FOR PANDORA"' \
  -fill '#858d83' -pointsize 18 -draw 'text 82,360 "C  •  TUI  •  CROSS-PLATFORM"' \
  -draw 'text 82,393 "MACOS  •  LINUX  •  WINDOWS"' \
  -fill '#a95473' -pointsize 18 -draw 'text 82,518 "> BY COLE PEARSON"' \
  -fill '#50664a' -pointsize 15 -draw 'text 82,551 "ITSCOL.ES"' \
  -fill '#030403' -stroke '#344035' -strokewidth 3 -draw 'rectangle 466,79 1136,557' \
  -stroke '#111410' -strokewidth 5 -fill none -draw 'rectangle 473,86 1129,550' \
  "$work_image" -geometry +476+89 -composite \
  -fill 'rgba(0,0,0,0.06)' -stroke none -draw 'rectangle 476,89 1126,556' \
  -define png:color-type=2 "$output_image"

printf '%s\n' "$output_image"
