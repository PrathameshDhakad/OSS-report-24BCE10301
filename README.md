# OSS Audit — 24BCE10301

| Open Source Software Audit | Vityarthi | OSS NGMC Course |

## Student Information

| Field | Details |
| :--- | :--- |
| **Name** | Prathamesh Dhakad |
| **Roll Number** | 24BCE10301 |
| **Slot** | E11 |
| **Date of Submission** | 31 03 2026 |

## Chosen Software
[Python] — This repository contains a structured audit of the Linux Kernel and five functional shell scripts as part of the OSS NGMC course.

## Repository Structure
```text
oss-audit-24BCE10301/
├── README.md
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_permission_auditor.sh
├── script4_log_analyzer.sh
└── script5_manifesto_generator.sh
```

## Scripts Overview

### Script 1 — System Identity Report
File: script1_system_identity.sh
Description: Displays a system welcome screen showing the Linux distribution name, kernel version, current logged-in user, home directory, system uptime, current date/time, and the open-source license covering the OS.
Concepts Used: Variables, echo, command substitution ($()), output formatting.

### Script 2 — FOSS Package Inspector
File: script2_package_inspector.sh
Description: CThis script checks whether Git is installed, retrieves its version and licence metadata, and uses a case statement to print a philosophy note depending on the package name. It shows conditional logic and pattern matching
Concepts Used: if-then-else, case statement, dpkg -l with grep and awk, pipe chaining, exit codes.

### Script 3 — Disk and Permission Auditor
File: script3_disk_permission_auditor.sh
Description:This script visit through important system directories, reports their disk usage and permissions, and also checks for Git's own configuration directory. It shows for-loop iteration over arrays and field extraction.
Concepts used: arrays, for loop, if-then-else, ls -ld, du -sh, awk, cut, directory existence tests.

### Script 4 — Log File Analyzer
File: script4_log_analyzer.sh
Description:This script reads a log file line by line, counts keyword occurrences, and prints the last five matching lines. It accepts command-line arguments for the log file path and keyword, making it reusable across different scenarios.
Concepts used: command-line arguments ($1, $2), default values (${var:-default}), while-read loop, if-then-else, counter arithmetic, grep -i with pipe, tail.

### Script 5 — Open Source Manifesto Generator
File: script5_manifesto_generator.sh
Description:This creative script asks the user three interactive questions and generates a personalised open-source philosophy statement, saved to a .txt file. It demonstrates interactive input, string concatenation, and file output redirection.
Concepts used: read -p for interactive input, string concatenation via variable expansion, file redirection (> and >>), date command, cat to display output, alias concept shown in comments.

## How to Run the Scripts

### Prerequisites
* A Linux system (Ubuntu/Debian or RHEL/CentOS based)
* Bash shell (`bash --version` to verify)
* The chosen software package installed (for Script 2)

### Step 1 — Clone the Repository
git clone https://github.com/PrathameshDhakad/oss-audit-24BCE10301.git
cd oss-audit-24BCE10301

### Step 2 — Make All Scripts Executable
chmod +x *.sh

### Step 3 — Run Each Script


##### Script 1 — System Identity Report

./script1_system_identity.sh

##### Script 2 — FOSS Package Inspector

./script2_package_inspector.sh

##### Script 3 — Disk and Permission Auditor

./script3_disk_permission_auditor.sh

##### Script 4 — Log File Analyzer

#Basic usage (default keyword: 'error')
./script4_log_analyzer.sh /var/log/syslog

#With a custom keyword
./script4_log_analyzer.sh /var/log/syslog WARNING

##### Script 5 — Open Source Manifesto Generator

./script5_manifesto_generator.sh
#Follow the on-screen prompts to generate your manifesto


## Dependencies

| **Script**	| **Dependencies**	| **Install Command** |
| :--- | :--- | :--- | 
| Script 1 |	uname, uptime, whoami	| Pre-installed on all Linux systems |
| Script 2 |	rpm or dpkg, grep	| Pre-installed on all Linux systems |
| Script 3 |	du, ls, awk, cut	| Pre-installed on all Linux systems |
| Script 4 |	grep, tail	| Pre-installed on all Linux systems |
| Script 5 |	date, cat	| Pre-installed on all Linux systems |

## License
This project was submitted as part of the Open Source Software (OSS NGMC) course at VIT. All shell scripts and written content are original work by the student listed above.

---

*Submitted via the VITyarthi portal as part of The Open Source Audit Capstone Project.*
