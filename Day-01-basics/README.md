# Day 01 - Linux Basics | Real-World Takeaways

## Commands Used
pwd
ls
mkdir
cd
touch


* I used `ssh-keygen` for the first time and understood how SSH keys work. The public key can be shared with GitHub or a server, but the private key should never leave my machine.

* `hostname` and `hostname -i` helped me understand the difference between a machine's name and its IP address. This is useful when connecting to servers or troubleshooting network issues.

* I checked `/etc/os-release` to identify the Linux distribution. This is one of the first things to verify before installing packages because commands can differ between distributions.

* `top` gave me a live view of what the system was doing. Instead of guessing why a server is slow, I can actually see which process is consuming CPU or memory.

* I explored `/var/log` and realized that Linux stores important system logs in one place. This is usually the first location to check when something goes wrong on a server.

* Using `tail -f auth.log` was interesting because it updates the log in real time. I learned that administrators often keep this command running while monitoring login attempts or debugging services.

* I used `grep` with log files to search for specific words instead of reading the entire file. This saves a lot of time when working with large logs.

* While practicing with `vi`, I became more comfortable creating, editing, and saving files directly from the terminal. This is an essential skill because many Linux servers don't have a graphical interface.

* I compared `hostname -i` with `curl ifconfig.me` and learned that they can show different IP addresses. One is the server's local/private IP, while the other is the public IP visible on the internet.

* While navigating directories, I made a few mistakes with paths. Fixing them helped me understand the difference between absolute paths (starting with `/`) and relative paths (`./` and `../`), which made navigation much clearer.


## vi Editor
- i → insert
- ESC → exit
- :wq → save & quit
- :w → save
- :q → exit
- :q! → quit without saving

## Task
Created file using vi and added content

## Learning
Linux is command based
