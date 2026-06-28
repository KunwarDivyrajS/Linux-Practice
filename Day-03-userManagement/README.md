# 💡 Day 03 Learning

* `su <username>` is used to switch to another user. It works only if that user already exists.

* `adduser` creates a new user along with a home directory and default settings.

* `{}` (brace expansion) helps create multiple files with a single command, which saves time.

* `mv` is very strict about spaces and syntax. Even a small typing mistake can make the command fail.

* `tar -cvf` is used to create a backup (archive) of files or folders without compressing them.

* `tar -xvf` extracts the archived files back to their original form.

* Every Linux user has a unique **UID (User ID)**. Even if a deleted user is created again with the same name, Linux treats it as a new user.

* A **group** is used to manage permissions for multiple users instead of assigning permissions one by one.

* `usermod -aG <group> <user>` adds an existing user to a group without removing them from other groups.

* `getent group` is a quick way to check whether a group exists and which users belong to it.

* `chage` is used to manage password expiry. Companies use it to force users to change passwords after a certain number of days.

* `/etc/passwd` stores user information like username, UID, home directory, and login shell. It does **not** store passwords.

* `/etc/shadow` stores encrypted passwords and password expiry information. Only privileged users can access it.

* `/etc/group` contains all Linux groups and their members.

* `/etc/sudoers` controls who can run administrative commands using `sudo`. A small mistake in this file can block admin access.
