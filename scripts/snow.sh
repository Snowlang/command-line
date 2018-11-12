#!/bin/bash
value=$(<$1)
echo "Evaluating code:"
echo "$value"
docker run --rm -it imanzarrabian/snowlang:0.1.0 "$value"
