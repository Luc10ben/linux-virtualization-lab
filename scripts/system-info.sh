#!/usr/bin/env bash
set -u

echo "===== SYSTEM INFORMATION ====="
printf "Hostname:     "
hostname 2>/dev/null || echo "Unavailable"

printf "OS:           "
if [[ -r /etc/os-release ]]; then
  . /etc/os-release
  printf '%s\n' "${PRETTY_NAME:-Unknown}"
else
  echo "Unknown (/etc/os-release not found)"
fi

printf "Kernel:       "
uname -r 2>/dev/null || echo "Unavailable"

printf "Architecture: "
uname -m 2>/dev/null || echo "Unavailable"

printf "Uptime:       "
if command -v uptime >/dev/null 2>&1; then
  uptime -p 2>/dev/null || uptime
else
  echo "uptime command not found"
fi

printf "Current user: "
id -un 2>/dev/null || echo "Unavailable"

echo
echo "Note: this script only displays information; it does not change system settings."
