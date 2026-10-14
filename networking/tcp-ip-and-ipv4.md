# Lab: TCP/IP and IPv4 basics

## Objective

Learn how to inspect a Linux machine's network configuration and explain the role of an IP address, subnet, interface, route, and default gateway.

## Commands to try

```bash
ip -brief address
ip route
ip link
hostname
```

If `ip` is unavailable, install the appropriate networking utilities for your distribution or consult its documentation.

## What to record

- Linux distribution and version:
- Network interface name:
- IPv4 address and prefix:
- Default route / gateway (if present):
- VM network mode (NAT, bridged, host-only, or other):
- What you expected to see:
- What you observed:

Do not publish details you consider sensitive.

## Concepts

- **IPv4 address:** Identifies an interface on an IPv4 network.
- **Prefix length:** Describes the network portion of an address, for example `/24`.
- **Default route:** Route used when no more-specific route matches the destination.
- **Network interface:** A logical or physical connection such as `ens33`, `enp0s3`, or `eth0`.
- **TCP:** A transport protocol that provides an ordered, reliable byte stream.
- **IP:** Delivers packets between network interfaces across networks.

## Self-check

1. What is the difference between an IP address and a MAC address?
2. What does a default route do?
3. Why might a VM have an IP address but still lack internet connectivity?
4. Why can interface names differ between distributions and VMs?

## Completion notes

After completing the lab, add a short summary here or in your own notes describing the commands you used and what you learned.
