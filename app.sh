#!/bin/sh
# Trivial app for fleet git host spikes.
greet() {
    if [ $# -eq 0 ]; then
        printf 'Hello, world!\n'
    else
        printf 'Hello, %s!\n' "$1"
    fi
}
echo "hello from fleet-sandbox"
