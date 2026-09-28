#!/usr/bin/env bash
set -euo pipefail

. ./app.sh

actual="$(greet "World"; printf X)"
expected="$(printf 'Hello, World!\n'; printf X)"
if [ "$actual" != "$expected" ]; then
    printf 'greet "World" mismatch: got %q, want %q\n' "$actual" "$expected" >&2
    exit 1
fi

actual="$(greet; printf X)"
expected="$(printf 'Hello, world!\n'; printf X)"
if [ "$actual" != "$expected" ]; then
    printf 'greet mismatch: got %q, want %q\n' "$actual" "$expected" >&2
    exit 1
fi

exit 0
