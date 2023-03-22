#!/bin/sh
echo "Config file: $1"
echo ""

ARGS=""
if [ "$1" != "" ]; then
    ARGS="-f $1"
fi

rationale=$(/swio eval $ARGS)
ret=$?

echo "Policy check exit code $ret"
echo "Rationale: $rationale"

exit $ret
