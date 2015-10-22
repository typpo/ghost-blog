#!/bin/bash

pushd `dirname $0`
cd "$(git rev-parse --show-toplevel)"
mkdir -p /var/log/myblog

echo "starting @ `date`"

NODE_ENV=production
bash prodstart.sh 2>> /var/log/myblog/node.err.log 1>> /var/log/myblog/node.out.log &

for job in `jobs -p`
do
echo $job
  wait $job
done

popd
