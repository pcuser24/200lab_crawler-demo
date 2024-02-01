#!/bin/sh

set -e

echo "init db"
/app/migrate init
echo "migrate db"
/app/migrate migrate

echo "start consumer"
exec "$@"
