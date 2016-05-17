#!/bin/bash

echo $0 $1
echo "WORKING"


cd $HOME/faimsWebsite
git pull
/home/fedarch/.rbenv/shims/jekyll build
