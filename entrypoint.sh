#!/bin/sh
echo "Policy dir: $1"
echo "Policy: $2"
echo "Input file $GITHUB_WORKSPACE/$3"

rationale=$(cat $GITHUB_WORKSPACE/$3 | RUST_LOG=trace /seedwing-policy-cli -p $1 eval --name "$2")
ret=$?

echo "Rationale: $rationale"
echo "rationale=$rationale" >> $GITHUB_OUTPUT

exit $ret

