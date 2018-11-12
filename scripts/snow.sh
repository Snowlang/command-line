#!/bin/bash
value=$(<$1)
echo "Evaluating code:"
echo "$value"
docker run --rm -it snowlang "$value"
