#!/bin/sh

set -e

echo "migrate db"
/app/migrate

echo "start crawler"
exec "$@"
