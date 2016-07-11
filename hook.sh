#!/bin/bash

source /home/fedarch/.bashrc

cd /home/fedarch/faimsWebsite; 

git log -n 2 &> /tmp/header.log

git pull &> /tmp/git.log
echo $? > /tmp/gitStatus.log

/home/fedarch/.rbenv/shims/jekyll build &> /tmp/jekyll.log
echo $? > /tmp/jekyllStatus.log

git add -A >> /tmp/git.log

git commit -a -m "Jekyll Build" >> /tmp/git.log

git push >> /tmp/git.log

python ~/logToSlack/logToSlack.py 
