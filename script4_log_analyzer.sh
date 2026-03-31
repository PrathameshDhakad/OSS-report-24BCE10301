#!/bin/bash
 # Script 4: Log File Analyzer
 # Usage: ./log_analyzer.sh /path/to/logfile [keyword]
 # Author: Prathamesh Dhakad | 24BCE10301
  LOGFILE=$1              # First argument: path to log file
 KEYWORD=${2:-"error"}    # Second argument or default 'error'
 COUNT=0                 # Counter variable initialised to 0
  # Validate that the log file exists
 if [ ! -f "$LOGFILE" ]; then
     echo "Error: File $LOGFILE not found."
     exit 1
 fi
  # while-read loop: read file line by line
 while IFS= read -r LINE; do
     # Case-insensitive keyword check inside the loop
     if echo "$LINE" | grep -iq "$KEYWORD"; then
         COUNT=$((COUNT + 1))   # Arithmetic increment
     fi
done < "$LOGFILE"
  echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
  # Handle empty file: do-while style retry with counter
 if [ $COUNT -eq 0 ]; then
     echo "No matches found. File may be empty or keyword absent."
 else
     echo "\nLast 5 matching lines:"
     # Combine grep and tail to show recent matches
     grep -i "$KEYWORD" "$LOGFILE" | tail -5
 fi

# Display Output #

prathamesh@LAPTOP-VKDFC683:~$ nano log_analyzer.sh
prathamesh@LAPTOP-VKDFC683:~$ chmod +x log_analyzer.sh
prathamesh@LAPTOP-VKDFC683:~$ ./log_analyzer.sh /var/log/bootstrap.log error
Keyword 'error' found 5 times in /var/log/bootstrap.log

Last 5 matching lines:
2025-01-06 20:13:39 URL:http://ftpmaster.internal/ubuntu/pool/main/libg/libgpg-error/libgpg-error0_1.47-3build2_amd64.deb [69990/69990] 
-> "/build/chroot/var/cache/apt/archives/partial/libgpg-error0_1.47-3build2_amd64.deb" [1]
Selecting previously unselected package libgpg-error0:amd64.
Preparing to unpack .../libgpg-error0_1.47-3build2_amd64.deb ...
Unpacking libgpg-error0:amd64 (1.47-3build2) ...
Setting up libgpg-error0:amd64 (1.47-3build2) ...

