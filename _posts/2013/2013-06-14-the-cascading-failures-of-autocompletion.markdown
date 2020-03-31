---
author: denubis
comments: true
date: 2013-06-14 03:04:40+00:00
layout: page
slug: the-cascading-failures-of-autocompletion
title: The cascading failures of autocompletion
wordpress_id: 980
categories:
- News
---

So, after further investigation, all of the problem we've been having is due to our little cute country-state auto-completion script dropping tens of warnings into the Apache error log.... every few milliseconds while people were trying to auto-complete it.

While this worked in our tests... clearly it scaled *exceedingly* poorly. This morning, tearing out the php conversion of csv to json (which was clearly overtaxing our poor little server) left us with unexpected jquery errors.

So I just removed auto-completion from the survey. While it would have been a cute luxury for a different server, our IO throughput on our virtual machine is simply insufficient to the task. (Due to disk-wait, we were averaging a load of over 10 on our 15 minute average.)

I would like to extend my sincere apologies to everyone who encountered slowdowns or errors during the survey.
