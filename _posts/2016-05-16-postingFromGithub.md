---
layout: page
#
# Content
#
title: "Editing... from github"
teaser: "I'm seeing if the webhook thingo works..."
categories:
  - news
tags:
  - technical
#
# Styling
#
---

So, just to make a sample commit, I'm testing to see if our [webhook](https://github.com/phayes/hookserve) on github commits actually eats the markdown file [this thing I'm writing right now on github](http://github.com/FAIMS/faimsWebsite/_posts/2016-05-16-postingFromGithub.md).

Basically, if I commit things, git tells a tiny daemon on the server to pull this repository. The Jekyll listener then remakes the html, and pushes the blog post. Like magic. Secure, secure magic.  
