#! /bin/sh
set -euo pipefail

assert() {
    if [[ "${1}" != "${2}" ]]; then
        echo "$1"
        echo ">> different from"
        echo "$2"
        false
    fi
}

test() {
    EXIT_CODE=0
    $1 || EXIT_CODE=$?
    if [[ $EXIT_CODE -ne 0 ]]; then
        echo "Failed: $1 ❌"
    else
        echo "Passed: $1 ✅"
    fi
}
