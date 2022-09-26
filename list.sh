#!/bin/bash

export OP_DEVICE=ankurekyqujmnknoldusggtest

echo "$1" | op account add --address $2 --email $3 --secret-key $4 --shorthand devops-test 2> /dev/null

eval $(echo "$1" | op signin --account devops-test)

if [ $6 == "login"  ]
then
 	category="Login"
elif [ $6 == "notes" ]
then
	category="Secure Note"
fi


op item list --categories "$category" --vault "$5"
