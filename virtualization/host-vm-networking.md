# Lab: Host-to-VM networking

## Objective

Understand how a host computer communicates with a Linux virtual machine.

## Common network modes

- **NAT:** The VM commonly uses the host's network connection for outbound access. Inbound connections from the host or other machines may require port forwarding.
- **Bridged:** The VM appears as a separate device on the local network, if the network permits it.
- **Host-only:** Creates a private network between the host and VM (and sometimes other VMs), often without internet access by default.

Exact behavior depends on your hypervisor and configuration.

## On the Linux VM

Run:

```bash
hostname
ip -brief address
ip route
```

Record the VM's address and default route in your private notes. Avoid publishing sensitive network information.

## From the host

Test connectivity only if your VM network mode is intended to allow it. For example:

```bash
ping <VM-IP>
```

Ping may be blocked, so failure alone does not prove that the VM is unreachable.

## Optional: SSH

If SSH server software is installed, enabled, and authorized for use, check its status:

```bash
systemctl status sshd
```

On some distributions the service is called `ssh`. Do not expose SSH to the public internet for this exercise. Prefer a host-only network or a carefully configured local lab.

## Lab report

Document:

- Hypervisor and version:
- Linux distribution:
- VM network mode:
- Host operating system:
- What connectivity you expected:
- Tests and results:
- Any issue and how you investigated it:
