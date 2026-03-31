#!/bin/bash
 # Script 1: System Identity Report
 # Author: Prathamesh Dhakad | Reg: 24BCE10301
 # Course: Open Source Software (OSS NGMC)
  # --- Variables ---
 STUDENT_NAME="Prathamesh Dhakad"
 SOFTWARE_CHOICE="Git"
  # --- System info via command substitution ---
 KERNEL=$(uname -r)           # Kernel version
 USER_NAME=$(whoami)           # Current user
 UPTIME=$(uptime -p)           # Human-readable uptime
 DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
 DATETIME=$(date '+%d %B %Y, %H:%M:%S')
 HOME_DIR=$(echo $HOME)        # Home directory
  # --- Display formatted output ---
 echo "================================================"
 echo "   Open Source Audit -- $STUDENT_NAME"
 echo "   Software Audited: $SOFTWARE_CHOICE"
 echo "================================================"
 echo "Distribution : $DISTRO"
 echo "Kernel       : $KERNEL"
 echo "User         : $USER_NAME"
 echo "Home         : $HOME_DIR"
 echo "Uptime       : $UPTIME"
 echo "Date/Time    : $DATETIME"
 echo "OS Licence   : GNU GPL v2 (Linux Kernel)"
 echo "================================================"

#Display System Identity report #
prathamesh@LAPTOP-VKDFC683:~$ nano system_report.sh
prathamesh@LAPTOP-VKDFC683:~$ chmod +x system_report.sh
prathamesh@LAPTOP-VKDFC683:~$ ./system_report.sh
========================================================
Open Source Audit -- Prathamesh Dhakad
Software Audited: Git
========================================================
Distribution : Ubuntu 24.04.1 LTS
Kernel       : 6.6.87.2-microsoft-standard-WSL2
User         : prathamesh
Home         : /home/prathamesh
Uptime       : up 1 minute
Date/Time    : 28 March 2026, 15:29:03
OS Licence   : GNU GPL v2 (Linux Kernel)
========================================================
