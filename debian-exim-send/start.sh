#!/bin/sh

path=/etc/exim4

# Set environment variables into configuration files
mkdir -p $path
echo $PRIMARY_HOST > $path/primary_host
echo "127.0.0.1 ; ::1 ;" "$ALLOWED_HOSTS" > $path/allowed_hosts

# Start exim
/usr/sbin/exim4 ${*:--bdf -q30m -v}
