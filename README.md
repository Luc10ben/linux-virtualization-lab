# Linux & Virtualization Lab

A practical, beginner-friendly lab for documenting Linux command-line skills, networking fundamentals, virtual-machine connectivity, and basic troubleshooting.

> **Status:** Learning project in progress. The exercises are intended to be run and documented in your own Linux VM. Update the notes with your actual environment, commands, outputs, and findings as you complete each lab.

## Goals

- Practice common Linux administration commands.
- Understand basic IPv4, routing, DNS, and connectivity checks.
- Explore host-to-VM networking and SSH.
- Use small Bash scripts to collect system and network information.
- Document troubleshooting with a repeatable process.

## Lab environment

Suggested setup:

- A Linux virtual machine (CentOS Stream, Rocky Linux, AlmaLinux, Ubuntu, or another distribution)
- A terminal with Bash
- Git
- Optional: SSH access from the host computer to the VM

Commands and configuration files can vary by distribution. Some exercises require `sudo` privileges. Do not run commands you do not understand, and avoid changing network configuration on a production machine.

## Repository map

```text
linux-virtualization-lab/
├── README.md
├── networking/
│   ├── tcp-ip-and-ipv4.md
│   ├── dns-and-connectivity.md
│   └── troubleshooting.md
├── system-administration/
│   ├── files-permissions.md
│   ├── processes-services.md
│   └── packages-and-updates.md
├── virtualization/
│   └── host-vm-networking.md
├── scripts/
│   ├── system-info.sh
│   ├── network-info.sh
│   └── health-check.sh
├── docs/
│   └── troubleshooting-log-template.md
└── .gitignore
```

## Quick start

Clone the repository:

```bash
git clone https://github.com/<YOUR-USERNAME>/linux-virtualization-lab.git
cd linux-virtualization-lab
```

Make the scripts executable:

```bash
chmod +x scripts/*.sh
```

Run the system information script:

```bash
./scripts/system-info.sh
```

Run the network information script:

```bash
./scripts/network-info.sh
```

Run the basic health check:

```bash
./scripts/health-check.sh
```

The scripts are read-only: they display information and do not change system settings. Some commands may be unavailable on older or minimal Linux installations.

## Labs

### 1. Linux system basics
Read [`system-administration/files-permissions.md`](system-administration/files-permissions.md), then practise inspecting files, permissions, processes, services, and installed packages.

### 2. Networking fundamentals
Read [`networking/tcp-ip-and-ipv4.md`](networking/tcp-ip-and-ipv4.md) and [`networking/dns-and-connectivity.md`](networking/dns-and-connectivity.md). Record your VM's interface, address, route, and connectivity results.

### 3. Host-to-VM networking
Follow [`virtualization/host-vm-networking.md`](virtualization/host-vm-networking.md). Your exact steps depend on the virtualization software and adapter mode.

### 4. Troubleshooting practice
Use [`networking/troubleshooting.md`](networking/troubleshooting.md) and record a real issue in [`docs/troubleshooting-log-template.md`](docs/troubleshooting-log-template.md).

## Troubleshooting method

Use a consistent sequence:

1. **Define the symptom** — what is failing, and what should happen?
2. **Gather evidence** — collect command output and relevant logs.
3. **Form a hypothesis** — identify a likely cause.
4. **Test one change at a time** — avoid changing several settings at once.
5. **Verify** — repeat the original test.
6. **Document** — record the cause, fix, and lesson learned.

## Suggested learning checklist

- [ ] Identify the distribution, kernel, and CPU architecture.
- [ ] Inspect files and permissions.
- [ ] Inspect running processes and services.
- [ ] Inspect network interfaces and routes.
- [ ] Distinguish IP connectivity from DNS resolution.
- [ ] Explain the purpose of a default gateway.
- [ ] Explain NAT vs. bridged vs. host-only VM networking.
- [ ] Connect to the VM using SSH, if the lab setup supports it.
- [ ] Complete at least one troubleshooting log based on a real test.
- [ ] Add your own observations and screenshots/output samples with sensitive details removed.

## Safety and privacy

- These scripts do not intentionally modify system configuration.
- Do not publish passwords, private keys, access tokens, public IPs you consider sensitive, or unredacted internal network details.
- Review command output before adding it to a public repository.
- Do not run administrative commands on a system you do not own or have permission to administer.

## Next improvements

Possible future additions: SSH configuration lab, Bash error handling, log inspection, a small Python system monitor, and automated shell-script checks.

## Author

Created as a personal learning project to practise Linux, networking, virtualization, and troubleshooting.
