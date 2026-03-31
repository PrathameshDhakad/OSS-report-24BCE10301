#!/bin/bash
 # Script 5: Open Source Manifesto Generator
 # Author: Prathamesh Dhakad | 24BCE10301
 # alias concept: 'gen-manifesto' could alias this script
 # alias gen-manifesto='bash ~/scripts/manifesto.sh'
  echo "=== Open Source Manifesto Generator ==="
 echo "Answer three questions to generate your manifesto."
 echo ""
  # Interactive input using read -p
 read -p "1. Name one open-source tool you use every day: " TOOL
 read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
 read -p "3. Name one thing you would build and share freely: " BUILD
  DATE=$(date '+%d %B %Y')       # Current date for timestamp
 USER=$(whoami)                 # System username
 OUTPUT="manifesto_${USER}.txt" # Dynamic filename
  # Write manifesto to file using > (overwrite) and >> (append)
 echo "Open Source Manifesto — $USER" > "$OUTPUT"
 echo "Generated: $DATE" >> "$OUTPUT"
 echo "" >> "$OUTPUT"
  # String concatenation to build the manifesto paragraph
 MANIFESTO="I believe that software should serve people, not corporations.
 Every day I use ${TOOL}, a tool that someone built and shared freely,
 proof that knowledge shared multiplies rather than diminishes.
 To me, freedom in software means ${FREEDOM} -- the right to read,
 modify, and share the code that shapes our lives
 I commit to contributing to this tradition: one day I will build
 ${BUILD} and release it openly, so the next person does not have
 to start from nothing. This is the foundation of open source."
  echo "$MANIFESTO" >> "$OUTPUT"  # Append to output file
  echo "\nManifesto saved to $OUTPUT"
 echo ""
 cat "$OUTPUT"   # Display generated file


#  Dsplay output #

prathamesh@LAPTOP-VKDFC683:~$ nano manifesto.sh
prathamesh@LAPTOP-VKDFC683:~$ chmod +x manifesto.sh
prathamesh@LAPTOP-VKDFC683:~$ ./manifesto.sh
=== Open Source Manifesto Generator ===
Answer three questions to generate your manifesto.

1. Name one open-source tool you use every day: Git
2. In one word, what does 'freedom' mean to you? Control
3. Name one thing you would build and share freely: Security Tools

Manifesto saved to manifesto_prathamesh.txt

Open Source Manifesto — prathamesh
Generated: 28 March 2026

I believe that software should serve people, not corporations. 
Every day I use Git, a tool that someone built and shared freely, proof that knowledge shared multiplies rather than diminishes. 
To me, freedom in software means Control — the right to read, modify, and share code that shapes our lives. 
I commit to contributing to this tradition: one day I will build Security Tools and release it openly, so the next person does not have to start from nothing.
This is the foundation of open source.
