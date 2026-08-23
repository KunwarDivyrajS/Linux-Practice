**# 💡 Day 06 Shell Scripting**

* `testvar='...'` assigns a value to a Bash variable.

* `VAR='...'` is another way to define a Bash variable using single quotes.

* `echo "$testvar , $VAR"` displays the values stored in Bash variables.

* `mkdir scripting` creates a new directory named `scripting`.

* `cd scripting` changes the current working directory to `scripting`.

* `vi expscript.sh` opens or creates a shell script using the `vi` editor.

* `cat expscript.sh` displays the contents of a shell script without opening an editor.

* `chmod +x expscript.sh` adds execute permission to the shell script.

* `./expscript.sh` executes the shell script from the current directory.

* `uptime` displays system uptime, logged-in users, and CPU load averages.

* `uptime | awk -F'load average:' '{print $2}'` extracts the load-average information from the `uptime` output.

* `LOAD=$(uptime | awk -F'load average:' '{print $2}')` stores the extracted CPU load information in a Bash variable using command substitution.

* `echo "Hello World" | awk '{print $1}'` uses `awk` to extract the first field from the input.

* `echo "Hello World" | awk '{print $2}'` uses `awk` to extract the second field from the input.

* `echo "$LOAD"` displays the value stored in the `LOAD` variable.

* `cat > health-check.sh <<'EOF'` creates a file directly from the terminal using a Bash heredoc.

* `echo -e` allows formatted terminal output and ANSI color codes to be displayed.

* `GREEN='\033[0;32m'` defines a reusable variable for green terminal output.

* `RED='\033[0;31m'` defines a reusable variable for red terminal output.

* `YELLOW='\033[1;33m'` defines a reusable variable for yellow terminal output.

* `NC='\033[0m'` resets the terminal color back to the default.

* `free -h` displays memory usage in a human-readable format.

* `free -h | awk '/Mem:/ {print $3 "/" $2}'` extracts used and total memory from the `free` command output.

* `df -h` displays filesystem disk usage in a human-readable format.

* `df -h / | tail -1` displays the disk-usage information for the root filesystem.

* `df -h / | tail -1 | awk '{print $5}'` extracts the disk-usage percentage from the filesystem output.

* `tr -d '%'` removes the `%` character from a value, making it easier to use as a numeric value in scripts.

* `df -h / | tail -1 | awk '{print $5}' | tr -d '%'` combines multiple Linux commands using pipes to extract only the numeric disk-usage percentage.

* `systemctl is-active --quiet ssh` checks whether the SSH service is currently active without displaying extra output.

* `systemctl is-active --quiet sshd` checks the SSH daemon status on systems where the service is named `sshd`.

* `if ... then ... else ... fi` provides conditional logic in Bash scripts.

* `||` executes the second command when the first command fails, allowing the script to check both `ssh` and `sshd`.

* `date` displays the current system date and time.

* `echo "Date and Time $(date)"` demonstrates command substitution by executing `date` and embedding its output inside another command.

* `time` measures how long a command takes to execute.

* `who` displays currently logged-in users.

* `w` provides information about logged-in users and what they are currently doing.

* `whoami` displays the username of the current user.

* `ps` displays currently running processes.

* `hostnamectl` displays detailed information about the Linux host, including hostname, operating system, kernel, and architecture.

* `pwd` displays the current working directory.

* `echo "$(pwd)"` demonstrates command substitution by executing `pwd` and displaying its output.

* `touch test.sh` creates an empty file if it does not already exist.

* `rm test.sh` removes a file from the filesystem.

* `echo "Old Data removed" > ex-scr.sh` redirects output into a file and overwrites its existing contents.

* `cd /var/log` changes the working directory to the Linux system log directory.

* `LOG_DIR="/var/log"` stores the log directory path in a Bash variable.

* `find $LOG_DIR -name "*.log"` searches for files ending with `.log` inside the specified directory.

* `find $LOG_DIR -name "*.log" -mtime +10` searches for `.log` files modified more than 10 days ago.

* `namelist=$(find $LOG_DIR -name "*.log")` stores the output of a `find` command inside a Bash variable.

* `echo "$namelist"` displays the value stored in the `namelist` variable.

* `clear` clears the current terminal screen.

* `history` displays previously executed commands, useful for reviewing and documenting Linux practice.

---

### 🔧 Practical Scripts Created

During this practice, I created and executed small Bash scripts for:

* Basic Bash scripting
* System information
* CPU/load information
* Disk monitoring
* Log file searching
* Server health checking

### 🔗 Key Bash Concepts Practiced

```text
Variables
   ↓
Command Substitution
   ↓
Pipes (|)
   ↓
awk / tail / tr
   ↓
File & Permission Management
   ↓
Conditions (if / else)
   ↓
Service Checks
   ↓
System Monitoring
   ↓
Practical Bash Automation
```

### 🚀 DevOps Connection

These exercises helped me understand how individual Linux commands can be combined into scripts to automate common operational tasks such as **server health checks, disk monitoring, log discovery, and service validation**.


# 🐧 Bash & Linux Scripting Practice

A hands-on collection of **Bash scripting and Linux command-line exercises** focused on practical DevOps tasks.

This repository documents my learning through small scripts and command-line exercises covering **variables, command substitution, text processing, system monitoring, disk monitoring, log handling, file operations, and service health checks**.

The goal is not only to write Bash scripts, but to understand how Linux commands can be combined to automate common operational tasks.

---

## 🎯 Learning Objectives

Through these exercises, I practiced:

* Linux command-line fundamentals
* Bash scripting basics
* Variables and variable expansion
* Command substitution
* File and directory operations
* Script execution and permissions
* Pipes and command chaining
* `awk`, `tr`, `tail`, and `find`
* CPU and system information
* Memory and disk monitoring
* Log file discovery
* Linux service health checks
* Creating scripts using `cat <<EOF`
* Basic automation and troubleshooting

---

## 📂 Topics Covered

```text
Bash & Linux Scripting
│
├── 🟢 Bash Basics
│   ├── Variables
│   ├── echo
│   ├── command substitution
│   └── script execution
│
├── 🔵 File Operations
│   ├── ls
│   ├── mkdir
│   ├── touch
│   ├── rm
│   ├── cat
│   └── chmod
│
├── 🟡 Text Processing
│   ├── awk
│   ├── tail
│   ├── tr
│   └── pipes
│
├── 🟠 System Information
│   ├── hostnamectl
│   ├── uptime
│   ├── date
│   ├── who
│   ├── whoami
│   └── ps
│
├── 🔴 Monitoring
│   ├── CPU load
│   ├── Memory usage
│   ├── Disk usage
│   └── Service status
│
└── 🟣 Log Management
    ├── /var/log
    ├── find
    └── log file filtering
```

---

## 🧪 Scripts Created

### 1. `expscript.sh`

My initial Bash scripting exercise.

Practiced:

* Creating a shell script
* Writing commands inside a script
* Executing a script
* Using `echo`
* Checking basic system information

---

### 2. `read-script.sh`

Practiced reading and working with shell script content.

This helped me understand the difference between:

```bash
cat file.sh
```

and executing the script:

```bash
./file.sh
```

---

### 3. `systemstatus.sh`

A basic system information script.

Practiced commands such as:

```bash
date
uptime
who
whoami
ps
hostnamectl
pwd
```

The purpose was to understand how Linux provides information about the current system and logged-in users.

---

### 4. `disk-monitor.sh`

A practical disk usage monitoring exercise.

The script uses:

```bash
df
tail
awk
tr
```

Example command:

```bash
df -h / | tail -1 | awk '{print $5}' | tr -d '%'
```

This demonstrates how multiple Linux commands can be combined using pipes to extract a specific value.

Flow:

```text
df
 │
 ▼
tail
 │
 ▼
awk
 │
 ▼
tr
 │
 ▼
Disk usage percentage
```

---

### 5. `health-check.sh`

A practical server health-check script.

It checks:

* CPU load
* Memory usage
* Disk usage
* SSH service status
* Execution timestamp

Example output:

```text
================================
      SERVER HEALTH CHECK
================================

CPU Load : 0.12, 0.08, 0.05
Memory   : 1.2Gi/3.8Gi
Disk     : 42%
SSH      : RUNNING

================================
Health check completed
================================
```

This exercise combines several Bash concepts into a small operational script.

---

## 🧠 Key Concepts Learned

### Variables

Bash variables can be created without spaces around `=`:

```bash
NAME="DIVYARAJ"

echo "$NAME"
echo "${NAME}"
```

Variables can then be reused throughout a script.

---

### Command Substitution

Instead of treating the command output as plain text:

```bash
date
```

the output can be stored or embedded using:

```bash
CURRENT_DATE=$(date)
```

or:

```bash
echo "Current date: $(date)"
```

This is useful when dynamically passing command results into scripts.

---

### Pipes

The pipe operator:

```bash
|
```

passes the output of one command to another.

Example:

```bash
df -h / | tail -1 | awk '{print $5}'
```

Conceptually:

```text
Command 1
   ↓
Command 2
   ↓
Command 3
   ↓
Required output
```

This is one of the most important concepts used in Linux automation.

---

### `awk`

Used for extracting and processing specific fields.

Example:

```bash
echo "Hello World" | awk '{print $2}'
```

Output:

```text
World
```

Another example:

```bash
df -h / | tail -1 | awk '{print $5}'
```

extracts the disk usage percentage.

---

### `tr`

Used for transforming or removing characters.

Example:

```bash
echo "85%" | tr -d '%'
```

Output:

```text
85
```

This is useful when a value needs to be converted from display format into a number that can be used in conditions.

---

### `find`

Used to locate files based on conditions.

Example:

```bash
find /var/log -name "*.log"
```

Find log files under `/var/log`.

A modification-time filter can also be used:

```bash
find /var/log -name "*.log" -mtime +10
```

This searches for `.log` files modified more than 10 days ago.

---

### File Permissions

Scripts need execute permission before they can be run directly:

```bash
chmod +x health-check.sh
```

Then:

```bash
./health-check.sh
```

The `+x` permission allows the file to be executed.

---

### Creating Files with `cat`

I also practiced creating scripts directly from the terminal using a heredoc:

```bash
cat > health-check.sh <<'EOF'
#!/bin/bash

echo "Server Health Check"
EOF
```

This is useful when working with remote Linux servers through SSH and when automating file creation.

---

## 🔍 Real-World DevOps Connection

These exercises represent small pieces of tasks commonly performed during Linux server administration and DevOps automation.

```text
Linux Server
     │
     ├── System Information
     │
     ├── CPU / Memory Monitoring
     │
     ├── Disk Monitoring
     │
     ├── Service Health Checks
     │
     └── Log File Management
              │
              ▼
        Bash Automation
              │
              ▼
        Jenkins / CI/CD
```

For example, a health-check script can later be integrated into a Jenkins pipeline to validate a server before or after deployment.

---

## 📚 Learning Progression

My learning progression from these exercises:

```text
Linux Commands
      ↓
Bash Variables
      ↓
Command Substitution
      ↓
Pipes
      ↓
awk / tail / tr
      ↓
Bash Scripts
      ↓
System Monitoring
      ↓
Disk Monitoring
      ↓
Log Management
      ↓
Server Health Checks
      ↓
DevOps Automation
```

---

## 🚀 Next Steps

Planned areas to practice:

* Bash `if/else` and comparison operators
* Loops
* Functions
* Script arguments
* Exit codes
* Error handling
* Log rotation and cleanup
* Automated disk alerts
* Docker health-check scripts
* Jenkins + Bash integration
* Bash scripts in CI/CD pipelines

---

## 🛠️ Environment

```text
OS        : Linux
Shell     : Bash
Tools     : awk, sed, grep, find, tail, tr
Automation: Bash scripting
```

---

## 💡 Takeaway

The main learning from these exercises is that Linux commands become much more powerful when combined.

Instead of only running:

```bash
df -h
```

I can start building automation around it:

```bash
df -h / | tail -1 | awk '{print $5}' | tr -d '%'
```

And eventually use that value in a script to make decisions:

```text
Disk Usage
    ↓
Is usage > threshold?
    ↓
 YES ──→ Alert / Action
    │
  NO
    ↓
 Continue
```

This is the foundation for building more practical **DevOps automation scripts**.
