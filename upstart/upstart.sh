#!/bin/bash

pushd `dirname $0`
cd "$(git rev-parse --show-toplevel)"
mkdir -p /var/log/my_blog

echo "starting @ `date`"

NODE_ENV=production GHOST_NODE_VERSION_CHECK=false bash startprod.sh 2>> /var/log/my_blog/node.err.log 1>> /var/log/my_blog/node.out.log &

for job in `jobs -p`
do
echo $job
  wait $job
done

popd
