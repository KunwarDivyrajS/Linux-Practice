# 🚀 Real World Project - Jenkins Installation Automation

## Project Objective

Instead of manually entering every command, I created a shell script to automate the installation of Java and Jenkins on an Ubuntu server.

---

## Files

* `jenkinsscript.sh` - Shell script containing all installation commands.
* `README.md` - Project documentation.
* `screenshots/` - Installation and verification screenshots.

---

## Steps Performed

### 1. Create the shell script

```bash
vi jenkinsscript.sh
```

Created a shell script to store all Jenkins installation commands in one file.

---

### 2. Verify the script

```bash
cat jenkinsscript.sh
```

Checked the script to make sure all commands were written correctly.

---

### 3. Check file permissions

```bash
ls -l
```

Verified the current permissions of the shell script.

---

### 4. Make the script executable

```bash
chmod 755 jenkinsscript.sh
```

Gave the owner full permissions and allowed others to execute the script.

---

### 5. Verify updated permissions

```bash
ls -l
```

Confirmed that the execute permission was successfully applied.

---

### 6. Run the script

```bash
./jenkinsscript.sh
```

Executed the complete installation using a single command instead of typing every command manually.

---

## Commands Used Inside `jenkinsscript.sh`

```bash
sudo apt update

sudo apt install fontconfig openjdk-21-jre -y

sudo apt install openjdk-17-jdk -y

java -version

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update

sudo apt install jenkins -y

jenkins --version

systemctl status jenkins
```

---

## What This Script Achieves

* Updates the package list.
* Installs Java (JDK and JRE).
* Verifies the installed Java version.
* Adds the Jenkins repository and security key.
* Installs Jenkins automatically.
* Verifies the Jenkins version.
* Confirms that the Jenkins service is running.

---

## Real-World Use

In real DevOps environments, engineers rarely install software by typing commands one by one on every server.

Instead, they create reusable shell scripts that:

* Save time.
* Reduce manual mistakes.
* Keep every server installation consistent.
* Allow the same setup to be repeated on multiple virtual machines or cloud instances.
