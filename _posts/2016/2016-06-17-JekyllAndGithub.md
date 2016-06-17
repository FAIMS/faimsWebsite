---
layout: post
#
# Content
#
subheadline: "Some of the infrastructure"
title: "A discussion of the technology which makes this blog possible"
teaser: "Why we moved away from PHP and wordpress and on to static site generation."
categories:
  - Reflections
author: Brian
header:
    image_fullwidth: Dr_Jekyll_and_Mr_Hyde_poster.jpg
    caption: "Image from wikipedia - Chicago : National Prtg. & Engr. Co. Modifications by Papa Lima Whiskey, 1880"
    caption_url: "https://en.wikipedia.org/wiki/Strange_Case_of_Dr_Jekyll_and_Mr_Hyde#/media/File:Dr_Jekyll_and_Mr_Hyde_poster_edit2.jpg"
#
# Styling
#
---

When we moved to the RAAP funding, I decided that it was time that we moved from our antiquated Wordpress design to a static site. Conversion from markdown (source for the post is [here](https://github.com/FAIMS/faimsWebsite/tree/master/_posts/2016)) mainly involved using the [ExitWP](https://github.com/thomasf/exitwp) tool to extract our content from wordpress, customising our theme ([Feeling Responsive](https://phlow.github.io/feeling-responsive/) by Phlow), and figuring out our deployment solution.

As an aside, as our previous webhook was using entirely too much CPU (some seventeen thousand hours versus the one hour for nginx, I'm also using this post to test my new solution. You may see edits appear if you're reading this in an [RSS reader](http://newsblur.com) ).