# Lab: Files, directories, and permissions

## Objective

Practise inspecting the filesystem and understanding Linux file permissions.

## Commands to try

```bash
pwd
ls -lah
file /etc/hosts
stat /etc/hosts
id
umask
```

Create a safe practice area in your home directory:

```bash
mkdir -p ~/linux-lab/permissions
cd ~/linux-lab/permissions
touch example.txt
ls -l example.txt
chmod 640 example.txt
ls -l example.txt
```

These commands create and modify only a practice file in your home directory.

## Understand `chmod 640`

- Owner: read and write (`6`)
- Group: read (`4`)
- Others: no permissions (`0`)

Permission numbers are sums of read (`4`), write (`2`), and execute (`1`).

## Self-check

1. What do owner, group, and others mean?
2. What is the difference between `chmod` and `chown`?
3. Why should you avoid using `chmod -R 777` as a general fix?
4. What does `sudo` change about command execution?

Write down your observations after running the commands.
