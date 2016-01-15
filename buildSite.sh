#!/bin/bash
set -euo pipefail

echo "Deploying"

cd $HOME/faimsWebsite
git pull > /tmp/gitlog 2> /tmp/giterr
jekyll clean >> /tmp/gitlog 2>> /tmp/giterr
jekyll build >> /tmp/gitlog 2>> /tmp/giterr

cd $HOME/faims.github.io
git add -A * >> /tmp/gitlog 2>> /tmp/giterr
git commit -a -m "automatic commit $(date)" --allow-empty >> /tmp/gitlog 2>> /tmp/giterr
git push >> /tmp/gitlog 2>> /tmp/giterr

cat /tmp/gitlog
cat /tmp/giterr

echo "Done"

