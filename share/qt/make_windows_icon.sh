#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/bitcoinwspectrum.png
ICON_DST=../../src/qt/res/icons/bitcoinwspectrum.ico
convert ${ICON_SRC} -resize 16x16 bitcoinwspectrum-16.png
convert ${ICON_SRC} -resize 32x32 bitcoinwspectrum-32.png
convert ${ICON_SRC} -resize 48x48 bitcoinwspectrum-48.png
convert bitcoinwspectrum-48.png bitcoinwspectrum-32.png bitcoinwspectrum-16.png ${ICON_DST}

