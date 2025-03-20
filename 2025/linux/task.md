# 📌 Linux Tasks

## 🔹 1️⃣ User & Group Management
Learn about Linux **users, groups, and permissions** (`/etc/passwd`, `/etc/group`).

### **Task:**
- Create a user `devops_user` and add them to a group `devops_team`.
- Set a password and grant **sudo** access.
- Restrict SSH login for certain users in `/etc/ssh/sshd_config`.

### **Commands:**
```bash
# Create the group (if not exists)
sudo groupadd devops_team  

# Create the user and assign them to the group
sudo useradd -m -g devops_team -s /bin/bash devops_user

# Set a password for the user
sudo passwd devops_user  

# Grant sudo privileges to the user
sudo usermod -aG sudo devops_user

# Alternatively, add a sudo rule
echo "devops_user ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/devops_user
sudo chmod 0440 /etc/sudoers.d/devops_user  # Set proper permissions

# Restrict SSH access
sudo nano /etc/ssh/sshd_config
# Add the following lines:
DenyUsers user1 user2
AllowUsers devops_user

# Restart SSH service
sudo systemctl restart sshd
```

![alt text](task_images/task1-a.png)
![alt text](task_images/task1-b.png) 
![alt text](task_images/task1-c.png) 

---

## 🔹 2️⃣ File & Directory Permissions
### **Task:**
- Create `/devops_workspace` and a file `project_notes.txt`.
- Set permissions:
  - **Owner can edit**, **group can read**, **others have no access**.
- Use `ls -l` to verify permissions.

### **Commands:**
```bash
# Create the directory and file
sudo mkdir /devops_workspace  
sudo touch /devops_workspace/project_notes.txt  

# Set permissions (Owner: Read+Write, Group: Read, Others: No Access)
sudo chmod 640 /devops_workspace/project_notes.txt

# Verify permissions
ls -l /devops_workspace/
```

![alt text](task_images/task2.png)
---

## 🔹 3️⃣ Log File Analysis with AWK, Grep & Sed
Logs are crucial in DevOps! We will analyze logs using the **Linux_2k.log** file from **LogHub** ([GitHub Repo](https://github.com/logpai/loghub/blob/master/Linux/Linux_2k.log)).

### **Task:**
- **Download the log file** from the repository.
- **Extract insights using commands:**
  - Use `grep` to find all occurrences of the word **"error"**.
  - Use `awk` to extract **timestamps and log levels**.
  - Use `sed` to replace all IP addresses with **[REDACTED]** for security.
- **Bonus:** Find the most frequent log entry using `awk` or `sort | uniq -c | sort -nr | head -10`.

### **Commands:**
```bash
# Count occurrences of "error" in logs
grep -i "error" app.log | wc -l

# Extract timestamps and log levels
awk '{print $1, $2, $3, $6}' app.log | head -5

# Replace IP addresses with [REDACTED]
sed 's \([[:digit:]]\+\(\.\|-\)\)\{3\}[[:digit:]]\+ [REDACTED] g' app.log | head -5 
# Find the most frequent log entry
awk '{print $6}' app.log | sort | uniq -c | sort -nr | head -10
```

![alt text](task_images/task3_a.png) 
![alt text](task_images/task3_b.png)
---



