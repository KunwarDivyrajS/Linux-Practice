root@scripting-vm:~/scripting# history
    1  history
    2  testvar='it is used to assigned var'
    3  VAR='and in these manner also we can use these'
    4  echo "$testvar , $VAR"
    5  ls
    6  mkdir scripting
    7  cd scripting
    8  vi expscript.sh
    9  cat expscript.sh
   10  chmod +x expscript.sh
   11  ./expscript.sh
   12  vi monitorscr.sh
   13  cat monitorscr.sh
   14  chmod +x monitorscr.sh
   15  ./monitorscr.sh
   16  history
   17  uptime
   18  uptime | awk -F '{print $2}'
   19  LOAD=$(uptime | awk -F'load average:' '{print $2}')
   20  echo "Hello World" | awk '{print $2}'
   21  echo "Hello World" | awk '{print $1}'
   22  LOAD=$(uptime | awk -F'load average:' '{print $1}')
   23  uptime
   24  echo "$LOAD"
   25  uptime | awk -F'load average:' '{print $1}'
   26  uptime | awk -F'load average:' '{print $2}'
   27  cat > cateof-script.sh <<'EOF'
#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "================================"
echo "      SERVER HEALTH CHECK"
echo "================================"

# CPU Load
LOAD=$(uptime | awk -F'load average:' '{print $2}')

# Memory
MEMORY=$(free -h | awk '/Mem:/ {print $3 "/" $2}')

# Disk
DISK=$(df -h / | awk 'NR==2 {print $5}')

echo -e "${YELLOW}CPU Load :${NC} $LOAD"
echo -e "${YELLOW}Memory   :${NC} $MEMORY"
echo -e "${YELLOW}Disk     :${NC} $DISK"

# Check SSH service
if systemctl is-active --quiet ssh || systemctl is-active --quiet sshd
then
    echo -e "${GREEN}SSH      : RUNNING${NC}"
else
    echo -e "${RED}SSH      : DOWN${NC}"
fi

echo "================================"
echo "Health check completed: $(date)"
EOF

   28  cat cateof-script.sh
   29  chmod +x cateof-script.sh
   30  ./cateof-script.sh
   31  history
   32  vi read-script.sh
   33  chmod +x read-script.sh
   34  ./read-script.sh
   35  cat read-script.sh
   36  ls
   37  cat expscript.sh
   38  ls
   39  cat read-script.sh
   40  date
   41  time
   42  who
   43  w
   44  whoami
   45  ps
   46  ps -h
   47  cat > ex-scr.sh <<'EOF'
   48  echo "Date and Time $date"
   49  echo "Date and Time ${date}"
   50  echo "Date and Time {$date}"
   51  echo "Date and Time $(date)"
   52  cat > ex-scr.sh <<'EOF'
> echo "Date and Time $(date)
echo "Date added in script"
EOF

   53  cat ex-scr.sh
   54  touch ex-scr.sh
   55  ls
   56  cat ex-scr.sh
   57  touch ex-scr.sh
   58  touch test.sh
   59  touch test
   60  ls
   61  rm test
   62  rm test.sh
   63  ls
   64  chmod +x ex-scr.sh
   65  ./ex-scr.sh
   66  echo "Old Data removed" > ex-scr.sh
   67  cat ex-scr.sh
   68  history
   69  ls
   70  touch info
   71  #! /bin/bash
   72  vi info
   73  ls
   74  cat info
   75  rm info
   76  touch info
   77  vi info-script.sh
   78  cat info-script.sh
   79  chmod +x info-script.sh
   80  ls
   81  ./info-script.sh
   82  cat info
   83  df
   84  df -h
   85  tail -l
   86  tail -1
   87  df -h| tail -1
   88  df -h| tail -1 | awk '{print $5}'
   89  df -h| tail -1 | awk '{print $5}' | tr
   90  df -h| tail -1 | awk '{print $5}' | tr -d
   91  df -h| tail -1 | awk '{print $5}' | tr -d '%'
   92  vi disk-monitor.sh
   93  fi
   94  vi disk-monitor.sh
   95  cat disk-monitor.sh
   96  df / | tail -1 | awk '{print $5}' | tr -d '%'
   97  df -h
   98  vi disk-monitor.sh
   99  chmod +x disk-monitor.sh
  100  ./disk-monitor.sh
  101  vi disk-monitor.sh
  102  cat disk-monitor.sh
  103  df / | awk '{print $5}' | tr -d '%'
  104  df / | tail -1 | awk '{print $5}' | tr -d '%'
  105  df | tail -1 | awk '{print $5}' | tr -d '%'
  106  df-h | awk '{print $5}' | tr -d '%'
  107  df -h | awk '{print $5}' | tr -d '%'
  108  df / | awk '{print $5}' | tr -d '%'
  109  df / | tail -1 | awk '{print $5}' | tr -d '%'
  110  df -h/ | tail -1 | awk '{print $5}' | tr -d '%'
  111  df -h / | tail -1 | awk '{print $5}' | tr -d '%'
  112  history
  113  clear
  114  ./disk-monitor.sh
  115  vi disk-monitor.sh
  116  ./disk-monitor.sh
  117  cat disk-monitor.sh
  118  vi disk-monitor.sh
  119  ./disk-monitor.sh
  120  cd /var/log
  121  ls
  122  cd ..
  123  LOG_DIR="/var/log"
  124  find $LOG_DIR -name "*.log"
  125  find $LOG_DIR -name ".log"
  126  find $LOG_DIR -name "*.log" -mtime +1
  127  find $LOG_DIR -name "*.log" -mtime +10
  128  namelist=$(find $LOG_DIR -name "*.log" -mtime +1)
  129  echo "$namelist"
  130  namelist=$(find $LOG_DIR -name "*.log" -mtime)
  131  namelist=$(find $LOG_DIR -name "*.log")
  132  echo "$namelist"
  133  ls
  134  cd ..
  135  cd ~
  136  ls
  137  cd scripting
  138  ls
  139  vi systemstatus.sh
  140  chmod +x systemstatus.sh
  141  ./systemstatus.sh
  142  NAMETEST="DIVYARAJ"
  143  echo "${NAMETEST}"
  144  echo "$NAMETEST"
  145  echo "$pwd"
  146  echo "$(pwd)"
  147  echo "I'm in $(pwd)"
  148  hostnamectl
  149  vi health-check.sh
  150  chmod +health-check.sh
  151  chmod +x health-check.sh
  152  ./health-check.sh
  153  history