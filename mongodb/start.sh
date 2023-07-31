#!/usr/bin/env bash

pushd $(dirname "$0") >/dev/null
scriptPath=$(pwd)
popd >/dev/null
dbPath=$scriptPath/data
echo $dbPath
docker run -d --name njsfsex2-mongo -v $dbPath:/data/db mongo:7.0-rc
