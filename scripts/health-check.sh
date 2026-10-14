#!/usr/bin/env bash
set -u

echo "===== BASIC SYSTEM HEALTH CHECK ====="

if command -v df >/dev/null 2>&1; then
  echo
  echo "--- Root filesystem usage ---"
  df -h /
else
  echo "df command not found"
fi

if command -v free >/dev/null 2>&1; then
  echo
  echo "--- Memory ---"
  free -h
else
  echo
  echo "The 'free' command is unavailable on this system."
fi

if command -v uptime >/dev/null 2>&1; then
  echo
  echo "--- Load and uptime ---"
  uptime
fi

if command -v systemctl >/dev/null 2>&1; then
  echo
  echo "--- systemd status ---"
  systemctl is-system-running 2>/dev/null || echo "systemd status unavailable (may be a container or non-systemd system)"
else
  echo
  echo "systemctl not found; this system may not use systemd."
fi

echo
echo "This is a basic information check, not a comprehensive diagnosis."
