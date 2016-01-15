#!/bin/bash

echo "Deploying"

cd $HOME/faimsWebsite
git pull
jekyll clean
jekyll build

cd $HOME/faims.github.io
git add -Au *
git commit -a -m "automatic commit $(date)" --allow-empty 
git push
