#!/bin/sh

if [ ! $# -eq 2 ] ; then
    echo "No username password provided"
    echo "please provide username and password"
    exit 10
fi

set -e
echo password $2
for entry in "/root/infaagent/apps/agentcore"/*
do
  echo "$entry"
done
cd /root/infaagent/apps/agentcore
./agent_start.sh  &

sleep 3

/root/infaagent/apps/agentcore/consoleAgentManager.sh configureToken $1 $2 | grep -q fails && exit 2


wait
