#!/bin/sh

set -e

echo "migrate db"
exec "/app/migrate"

echo "start
