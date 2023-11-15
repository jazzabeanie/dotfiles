#!/bin/bash

resolv_file="/etc/resolv.conf"
nameserver_line="nameserver 10.10.32.50"

# Check if the file doesn't exist
if [ ! -e "$resolv_file" ]; then
    echo "$nameserver_line" | sudo tee "$resolv_file" > /dev/null
fi

