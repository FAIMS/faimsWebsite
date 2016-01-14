#!/bin/bash

echo "Deploying"

cd $HOME/faims.github.io
git pull

cd $HOME/faimsWebsite
jekyll build
cp -r $HOME/faimsWebsite/_site/* $HOME/faims.github.io/

cd $HOME/faims.github.io
git commit -a -m "automatic commit $(date)"
git push
