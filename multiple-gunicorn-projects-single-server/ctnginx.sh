#!/usr/bin/bash

# Create a new nginx site conf from an existing template/conf and create a symlink
# The created conf will still need to be edited to point to the right directories

template=$1
target=$2

[[ -z "$1" ]] && { echo "missing arg: template" ; exit 1; }
[[ -z "$2" ]] && { echo "missing arg: target" ; exit 1; }

# Copy file from template
cp /etc/nginx/sites-available/$template /etc/nginx/sites-available/$target

# Create symlink
ln -s /etc/nginx/sites-available/$target  /etc/nginx/sites-enabled/$target
