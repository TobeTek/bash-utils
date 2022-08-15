#!/usr/bin/bash

# Create a new gunicorn service from a template .service and .socket file

template=$1
target=$2

[[ -z "$1" ]] && { echo "missing argument: template" ; exit 1; }
[[ -z "$2" ]] && { echo "missing argument: target" ; exit 1; }

cp "/etc/systemd/system/$template.service" "/etc/systemd/system/$target.service"
cp "/etc/systemd/system/$template.socket" "/etc/systemd/system/$target.socket"
