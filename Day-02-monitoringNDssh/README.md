## Things I Learned Today

* While checking running processes, I found that `ps -ef | grep <process-name>` is one of the easiest ways to confirm whether a service is actually running. This is especially useful after installing software like Nginx.

* I checked `/etc/os-release` and realized it's the quickest way to know which Linux distribution I'm working on. This matters because installation commands can change between Ubuntu, CentOS, and other distributions.

* Using `uname -a` helped me understand that Linux has its own kernel information, architecture, and version. If something isn't compatible, this command is one of the first things to check.

* `top` made me realize that Linux lets you watch the system live. You can immediately see if the CPU or memory is being overloaded instead of guessing what's wrong.

* I compared `free -h` and `df -h` today. At first they looked similar, but they solve different problems. `free -h` tells me about RAM usage, while `df -h` tells me how much disk space is left.

* Creating an SSH key with `ssh-keygen` was interesting because I learned that I don't always need a password to connect to a server or GitHub. The public key is shared, but the private key should always stay with me.

* Installing Nginx wasn't the final step. I also checked whether it was actually running. That made me understand that in the real world, installing software and verifying that it's working are two different tasks.

* Looking back through the `history` command helped me see every step I had taken. It's a simple way to review my work or remember commands that I might use again later.
