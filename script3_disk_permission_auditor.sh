#!/bin/bash
 # Script 3: Disk and Permission Auditor
 # Author: Prathamesh Dhakad | 24BCE10301
  # Array of directories to audit
 DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
 echo "Directory Audit Report"
 echo "----------------------"
  # Loop through each directory in the array
 for DIR in "${DIRS[@]}"; do
     if [ -d "$DIR" ]; then
         # Extract permissions, owner, group using awk
PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
         SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
         echo "$DIR => Permissions: $PERMS | Size: $SIZE"
     else
         echo "$DIR does not exist on this system"
     fi
 done
  # Check Git's config directory and global config file
 echo "\nGit Configuration Audit"
 echo "-----------------------"
 GIT_CONFIG="$HOME/.gitconfig"
 if [ -f "$GIT_CONFIG" ]; then
     PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
     echo "$GIT_CONFIG => $PERMS"
 else
     echo "No global Git config found at $GIT_CONFIG"
 fi

# Display Output#

prathamesh@LAPTOP-VKDFC683:~$ nano permission_auditor.sh
prathamesh@LAPTOP-VKDFC683:~$ chmod +x permission_auditor.sh
prathamesh@LAPTOP-VKDFC683:~$ ./permission_auditor.sh
Directory Audit Report
----------------------
/etc => Permissions: drwxr-xr-x root root | Size: 4.2M
/var/log => Permissions: drwxr-xr-x root syslog | Size: 181M
/home => Permissions: drwxr-xr-x root root | Size: 52K
/usr/bin => Permissions: drwxr-xr-x root root | Size: 95M
/tmp => Permissions: drwxrwxrwt root root | Size: 28K

Git Configuration Audit
------------------------
No global Git config found at /home/prathamesh/.gitconfig



