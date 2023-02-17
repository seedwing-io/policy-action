#!/bin/sh
echo -n $3 | /seedwing-policy-cli -p $1 eval --name $2 >> $GITHUB_OUTPUT
