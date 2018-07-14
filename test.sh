#!/bin/bash

(
cp -r testdata tmp
cd tmp
([ "$(../all_but_youngest.sh 4)" == "e" ] && exit 0) || (echo "FAILED: oldest should be deleted" && exit 1)
)
result=$?


rm -rf tmp

([ 0 -ne $result ] && echo "TEST FAILED") || echo "TEST SUCCEEDED"

exit $result
