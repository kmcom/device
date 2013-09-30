#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "usage: $0 file.brd bottom.png" 1>&2
  exit 1
fi

/Applications/EAGLE-6.5.0/EAGLE.app/Contents/MacOS/EAGLE -C "RATSNEST; DISPLAY NONE; DISPLAY BOTTOM PADS VIAS DIMENSION BPLACE; EXPORT IMAGE ${2} MONOCHROME 600" ${1}
