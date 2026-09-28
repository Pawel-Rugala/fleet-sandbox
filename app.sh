#!/bin/sh
# Trivial app for fleet git host spikes and smokes (M3 R.1: a conflicting edit on main).
greet() {
    if [ $# -eq 0 ]; then
        printf 'Hello, world!\n'
    else
        printf 'Hello, %s!\n' "$1"
    fi
}
echo "hello from fleet-sandbox"
