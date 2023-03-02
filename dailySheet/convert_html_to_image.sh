#!/bin/bash

wkhtmltoimage --height 885 --width 1865 --format png --enable-local-file-access $1 ${1%.html}.png
convert ${1%.html}.png -quality 90 ${1%.html}.jpg
rm ${1%.html}.png
