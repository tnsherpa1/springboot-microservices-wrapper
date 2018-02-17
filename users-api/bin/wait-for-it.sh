#!/bin/bash
# wait-for-postgres.sh

set -e

host="$1"
shift
cmd="$@"

>&2 echo "Waiting for Postgres"
until PGPASSWORD=password psql --quiet -h "$host" -U "postgres" -c '\l'; do
  echo "."
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd