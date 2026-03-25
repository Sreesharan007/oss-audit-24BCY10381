#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $OUTPUT
echo "Tools like $TOOL show how collaboration shapes technology." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
