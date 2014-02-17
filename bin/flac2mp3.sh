#!/bin/bash
for i in *.flac; do
  echo "Converting: ${i%.flac}.mp3";
  flac -cd "$i" | lame -b 256 - "${i%.flac}.mp3";
done

