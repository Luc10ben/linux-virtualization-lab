# Lab: DNS and connectivity checks

## Objective

Separate basic IP connectivity problems from DNS-resolution problems.

## Commands to try

```bash
ip route
ping -c 4 1.1.1.1
getent hosts example.com
```

Optional, if installed:

```bash
resolvectl status
dig example.com
nslookup example.com
```

A ping can be blocked by a network even when other services work. Treat its result as evidence, not as a definitive test of all connectivity.

## Interpreting results

- If an IP-address test succeeds but name lookup fails, DNS may be involved.
- If both fail, investigate interface state, routes, gateway, firewall, and VM adapter configuration.
- If name lookup succeeds but a website does not load, the problem may be at a different layer (for example, proxy, TLS, or application configuration).

## Record your test

| Test | Command | Result | Interpretation |
|---|---|---|---|
| Interface/address | `ip -brief address` | Fill in | Fill in |
| Route | `ip route` | Fill in | Fill in |
| IP connectivity | `ping -c 4 1.1.1.1` | Fill in | Fill in |
| DNS lookup | `getent hosts example.com` | Fill in | Fill in |

Replace the placeholders with results from your own lab. Do not claim a test succeeded unless you ran it.
