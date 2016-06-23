#!/bin/bash

source /home/fedarch/.bashrc

cd /home/fedarch/faimsWebsite; 

git log -n 1 &> /tmp/header.log

git pull &> /tmp/git.log
echo $? > /tmp/gitStatus.log

/home/fedarch/.rbenv/shims/jekyll build &> /tmp/jekyll.log
echo $? > /tmp/jekyllStatus.log

python ~/logToSlack/logToSlack.py 
