#!/bin/sh

SOURCE="${3:-$GITHUB_WORKSPACE}"

echo "Policy dir: $1"
echo "Config: $2"
echo "Source $SOURCE"

rationale=$(/senf once --config "$2" --source "$SOURCE"  --output yaml)
ret=$?

echo "Policy check exit code $ret"
echo "$rationale"

exit $ret
