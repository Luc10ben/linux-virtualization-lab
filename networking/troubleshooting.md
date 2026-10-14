# Networking troubleshooting playbook

Use this checklist when a Linux VM cannot reach another host or the internet.

## 1. Clarify the symptom

- Is the VM missing an IP address?
- Can it reach its gateway?
- Can it reach an external IP?
- Can it resolve a domain name?
- Is only one service failing?

## 2. Gather evidence

```bash
ip -brief address
ip route
ip link
hostname
getent hosts example.com
```

Use `ping -c 4 <destination>` when appropriate and permitted. If a tool is missing, note that rather than assuming the network is broken.

## 3. Check the virtualization layer

Confirm which adapter mode the VM uses (NAT, bridged, host-only, or another mode). Check the virtualization application's network settings and its documentation before changing them.

## 4. Change one thing at a time

Record the original setting, make one controlled change, then rerun the same tests. Avoid disabling firewalls as a first response.

## 5. Verify and document

Record the original symptom, evidence, hypothesis, action, final result, and what you learned. Use the template in `../docs/troubleshooting-log-template.md`.

## Example diagnostic logic

- **No interface/address:** investigate the virtual adapter and network manager.
- **Address but no route:** inspect route configuration and VM network mode.
- **IP works, domain lookup fails:** investigate DNS configuration.
- **Only one port/service fails:** test the service and its listening port; do not assume general network failure.
