#!/bin/bash


date=$(date +"%Y-%m-%d %H:%M:%S %z")
title=$*
fileTitle=$(echo $(date +"%Y-%m-%d")"$title" | sed 's/ /-/g')
echo $title $fileTitle

cat << EndOfMessage
---
author: denubis
date: $date
layout: post
title: $title
subheadline: 
teaser: 
breadcrumb: true
categories:
    - News
tags:
    - blog

image:
    title: 
    caption: 
    caption_url: 
---
EndOfMessage