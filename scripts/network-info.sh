#!/usr/bin/env bash
set -u

echo "===== NETWORK INFORMATION ====="

if command -v ip >/dev/null 2>&1; then
  echo
  echo "--- Interfaces and addresses ---"
  ip -brief address

  echo
  echo "--- Routing table ---"
  ip route
else
  echo "The 'ip' command was not found. Install the appropriate iproute package for your distribution."
fi

echo
echo "--- DNS resolver configuration ---"
if [[ -r /etc/resolv.conf ]]; then
  # Resolver configuration can contain internal network details; review before sharing output.
  cat /etc/resolv.conf
else
  echo "/etc/resolv.conf is not readable or does not exist."
fi

echo
echo "Privacy note: review output before posting it publicly; it may reveal internal network details."
