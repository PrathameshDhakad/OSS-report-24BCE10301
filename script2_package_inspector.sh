#!/bin/bash
 # Script 2: FOSS Package Inspector
 # Author: Prathamesh Dhakad | 24BCE10301
  PACKAGE="git"   # Package to inspect
  # Check if package is installed using dpkg (Debian/Ubuntu)
 if dpkg -l $PACKAGE &>/dev/null; then
     echo "$PACKAGE is installed."
     # Extract version and description via grep pipe
     dpkg -l $PACKAGE | grep -E '^ii' | awk '{print "Version: " $3}'
     git --version
 else
     echo "$PACKAGE is NOT installed. Install with: sudo apt install git"
     exit 1
 fi
  # case statement: print philosophy note for known packages
 case $PACKAGE in
     git)     echo "Git: built when Linus lost BitKeeper — freedom in version control" ;;
     httpd)   echo "Apache: the web server that built the open internet" ;;
     mysql)   echo "MySQL: open source at the heart of millions of applications" ;;
     firefox) echo "Firefox: a nonprofit's fight for an open, private web" ;;
     *)       echo "Unknown package — explore it at opensource.org" ;;
 esac

# Display Output #
prathamesh@LAPTOP-VKDFC683:~$ nano package_inspector.sh
prathamesh@LAPTOP-VKDFC683:~$ chmod +x package_inspector.sh
prathamesh@LAPTOP-VKDFC683:~$ ./package_inspector.sh
git is installed.
Version: 1:2.43.0-1ubuntu7.1
git version 2.43.0
Git: built when Linus lost BitKeeper - freedom in version control
prathamesh@LAPTOP-VKDFC683:~$
