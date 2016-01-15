#!/bin/bash

echo "Deploying"

cd $HOME/faims.github.io
git pull

cd $HOME/faimsWebsite
git pull
jekyll clean
jekyll build

cd $HOME/faims.github.io
git commit -a -m "automatic commit $(date)"
git push
