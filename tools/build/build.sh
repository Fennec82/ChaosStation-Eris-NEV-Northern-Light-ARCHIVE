#!/bin/sh
set -e
cd "$(dirname "$0")"
exec ../bootstrap/node build.js "$@"

#Use Chmod command through git or your bash shell of choice in the event this shows up as anything other than 755 when checked into the version control --Fennec82
