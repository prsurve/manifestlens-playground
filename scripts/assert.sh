#!/usr/bin/env bash
# usage: assert.sh <name> <key=expected>...   (actual values come from env vars named ACTUAL_<key>)
fail=0
name=$1; shift
for pair in "$@"; do
  key=${pair%%=*}; want=${pair#*=}
  var="ACTUAL_${key//-/_}"; got=${!var}
  if [ "$got" = "$want" ]; then echo "ok   $name: $key = $got"; else echo "FAIL $name: $key = '$got', expected '$want'"; fail=1; fi
done
exit $fail
