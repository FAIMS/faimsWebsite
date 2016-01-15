#!/bin/bash
set -euo pipefail
source ~/.bashrc

echo "Building"


cd $HOME/faimsWebsite
git pull > /tmp/gitlog 2> /tmp/giterr
jekyll build --destination $HOME/faims.github.io/ >> /tmp/gitlog 2>> /tmp/giterr
echo "Deploying"
cd $HOME/faims.github.io
git add --all $HOME/faims.github.io >> /tmp/gitlog 2>> /tmp/giterr
git commit -a -m "automatic commit $(date)">> /tmp/gitlog 2>> /tmp/giterr
git push -f >> /tmp/gitlog 2>> /tmp/giterr

cat /tmp/gitlog
cat /tmp/giterr

echo "Done"
