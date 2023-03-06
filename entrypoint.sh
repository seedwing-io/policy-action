#!/bin/sh
echo "Policy dir: $1"
echo "Policy: $2"
echo "Input file $GITHUB_WORKSPACE/$3"
echo ""

rationale=$(cat $GITHUB_WORKSPACE/$3 | RUST_LOG=trace /swio eval -p $1 --name "$2")
ret=$?

echo "Policy check exit code $ret"
echo "Rationale: $rationale"

exit $ret
