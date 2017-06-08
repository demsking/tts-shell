#!/bin/bash

TEXT=$(xsel)

# Language detection using fastlang (https://github.com/kootenpv/fastlang)
LANG=`fastlang $TEXT | sed "s/^.*: '\([a-z]*\)',.*/\1/"`

if [ ${#LANG} -gt 2 ]; then
  LANG=en
fi

echo "TEXT>> $TEXT"
echo "LANG>> $LANG"

# TTS
IFS=+
ENDPOINT="http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=$TEXT&tl=$LANG"

readText() {
  /usr/bin/mplayer -really-quiet -noconsolecontrols $ENDPOINT
}

line=`ps aux | grep /usr/bin/clementine`

if [ -z "$line" ]; then
  readText
else
  clementine --volume-decrease-by 70
  readText
  clementine --volume-increase-by 70
fi
