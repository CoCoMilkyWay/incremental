#!/bin/bash

set -e -u -o pipefail

cp --no-preserve mode ../test/*.ml{,i} .
rm test_non_debug.ml{,i}
echo 'module Incremental = Incremental_debug' >>import.ml
chmod a-w *.ml{,i}
