#!/bin/bash

source /home/fedarch/.bashrc

cd /home/fedarch/faimsWebsite; 
git pull; > /tmp/hook.log
/home/fedarch/.rbenv/shims/jekyll build &>> /tmp/hook.log

python ~/logToSlack/hook.sh /tmp/hook.log
