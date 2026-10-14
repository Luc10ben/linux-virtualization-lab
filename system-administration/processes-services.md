# Lab: Processes and services

## Objective

Learn how to inspect processes and service status without changing system state.

## Commands to try

```bash
ps aux
top
free -h
uptime
```

On systems using systemd, you can inspect services with:

```bash
systemctl --type=service --state=running
systemctl status sshd
```

The SSH service may be named `ssh` on some distributions, and it may not be installed. A missing service is not necessarily an error.

## Safe practice

Start a simple foreground process:

```bash
sleep 60
```

In another terminal, find it:

```bash
pgrep -a sleep
```

Stop only your own test process by returning to the first terminal and pressing `Ctrl+C`.

## Self-check

- What is a process ID (PID)?
- What is the difference between a process and a service?
- What information does `uptime` provide?
- Why should you inspect a service before restarting it?
