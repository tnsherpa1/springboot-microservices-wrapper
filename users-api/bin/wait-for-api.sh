#!/usr/bin/env bash
set -e

RED="\033[31m"

service_name="$1"
url="$2"
shift
cmd="$@"

>&2 echo -e $RED "Waiting for $service_name ($url)"

until curl --output /dev/null --silent --head --fail $url; do
    printf '.'
    sleep 1
done

#until curl --output /dev/null --silent --head --fail $url; do
#    printf '.'
#    sleep 1
#done

>&2 echo -e \n $RED "Users API is up - executing command"
exec $cmd