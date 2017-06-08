#!/bin/bash

TEXT=$(xsel)

# Language detection using fastlang (https://github.com/kootenpv/fastlang)
LANG=`fastlang $TEXT | sed "s/^.*: '\([a-z]*\)',.*/\1/"`

if [ "$LANG" = '' ]; then
  LANG=en
fi

# TTS
IFS=+
API="http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=$TEXT&tl=$LANG"

/usr/bin/mplayer -really-quiet -noconsolecontrols $API
