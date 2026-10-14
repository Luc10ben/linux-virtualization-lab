# Lab: Package management

## Objective

Identify the package manager used by your distribution and learn how to inspect package information.

## Identify your distribution

```bash
cat /etc/os-release
```

Common package managers:

- Fedora, RHEL, CentOS Stream, Rocky Linux, AlmaLinux: commonly `dnf` (older systems may use `yum`)
- Debian and Ubuntu: `apt`

## Read-only examples

For DNF-based systems:

```bash
dnf info bash
dnf list installed
```

For Debian/Ubuntu systems:

```bash
apt show bash
dpkg -l bash
```

## Important

Updating or installing packages changes the system and may require administrator privileges. In a learning VM, read your distribution's guidance first and take a snapshot if your hypervisor supports it. Do not run package-management commands on a work or production machine without authorization.
