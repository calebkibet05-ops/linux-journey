##!/usr/bin/env bash

usage() {
    echo "Usage: $0 <path>"
    echo "Checks whether a file or directory exists."
}

if [ "$#" -ne 1 ]; then
    usage
    exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    usage
    exit 0
fi

path="$1"

if [ -e "$path" ]; then
    echo "Path exists: $path"
    ls -ld "$path"
else
    echo "Path does not exist: $path"
    exit 2
fi
