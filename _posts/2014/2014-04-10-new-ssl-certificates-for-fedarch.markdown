---
author: denubis
comments: true
date: 2014-04-10 03:36:16+00:00
layout: page
slug: new-ssl-certificates-for-fedarch
title: New SSL Certificates for fedarch.org
wordpress_id: 1282
categories:
- News
---

A quick public service announcement: use the massive impact of the heartbleed bug as impetus to

1. change all your passwords (used in the last few weeks) to distinct, very strong, random passwords, and;

2. use a password manager like [lastpass](https://www.lastpass.com) or [KeePass](http://keepass.info/) to manage them with a very strong (and never reused) master password and [two-factor authentication](http://www.google.com/landing/2step/).

Due to the recent [heartbleed bug](http://heartbleed.com/) (good summary of the impact on half a million web sites [here](http://krebsonsecurity.com/2014/04/heartbleed-bug-exposes-passwords-web-site-encryption-keys/)), we've had to regenerate our SSL keys and patch our servers, just like the rest of the internet. (Quick summary: it's a very very no good just awful bug impacting ssl security.)

Happily, we've gone through all of the necessary heartache to patch our primary web server, our wiki, and infrastructure servers and are currently patching our repository. We have also regenerated our SSL private keys and certificates, so we've mitigated the bug's impact, but it's still a very very scary bug and thousands of major websites are still unpatched.
