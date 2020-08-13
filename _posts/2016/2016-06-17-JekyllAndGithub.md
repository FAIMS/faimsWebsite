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
author: denubis
header:
    image_fullwidth: Dr_Jekyll_and_Mr_Hyde_poster.jpg
    caption: "Image from wikipedia - Chicago : National Prtg. & Engr. Co. Modifications by Papa Lima Whiskey, 1880"
    caption_url: "https://en.wikipedia.org/wiki/Strange_Case_of_Dr_Jekyll_and_Mr_Hyde#/media/File:Dr_Jekyll_and_Mr_Hyde_poster_edit2.jpg"
#
# Styling
#
---

When we moved to the RAAP funding, I decided that it was time that we moved from our antiquated Wordpress design to a static site. Conversion from markdown (source for the post is [here](https://github.com/FAIMS/faimsWebsite/tree/master/_posts/2016)) mainly involved using the [ExitWP](https://github.com/thomasf/exitwp) tool to extract our content from wordpress, customising our theme ([Feeling Responsive](https://phlow.github.io/feeling-responsive/) by Phlow), and figuring out our deployment solution.

As an aside, as our previous webhook was using entirely too much CPU (some seventeen thousand hours versus the one hour for nginx, I'm also using this post to test my new solution. You may see edits appear if you're reading this in an [RSS reader](http://newsblur.com)). This post, in many ways, is also something of a guide to "how to publish a markdown post."

This [markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) may be handy.

# Steps for making a post

1. Get the latest copy of the repo
    1. If you don't have the repository on your computer yet: `git clone git@github.com:FAIMS/faimsWebsite.git`
        1. You'll need to make sure that git is set up on your computer properly. Follow the [Generating an SSH Key](https://help.github.com/articles/generating-an-ssh-key/) instructions. 
        1. This is because you are, of course, using two factor authentication, which makes https extremely tedious to login using.
    1. If you do have the repository, `git pull`
1. Write your blog post
    1. Copy a prior post in the `posts/2016/` directory
    1. Edit the header content
        1. Find a good full-width banner which is creative commons. Put it in `/images/`. 
        1. Make sure to link and give attribution.
    1. Write a post in a text editor of your choice. Use the markdown cheatsheet as linked above to remember formatting. (Technically pandoc is possible, but conversion is just tedious and unnecessary for simple blog posts).
1. Commit your repository
    1. In the `faimsWebsite/` directory, run `git add -A`
    1. Then run `git commit -a -m "Your commit message here"`
        1. A good commit message is important, as it is a quick summary of what action you're taking
1. Push your repository to github
    1. `git push`
1. Then, my [webhook](https://developer.github.com/webhooks/) calls its [listener](https://github.com/bketelsen/captainhook). This causes the webserver to pull the latest copy from github, and then run `jekyll build`. Results should show up on this website in 10 seconds or so.

The benefit to this approach is that the webserver is stoneaxe simple. It's literally just [nginx](https://nginx.org/en/) with no server-side scripting layer. This dramatically reduces cpu cycles spent as well as our threat surface. And, because we have lots of repositories (each git repository can stand alone) -- we have much greater data reliability and integrety than we would with wordpress and a single source of backups. Post writing occurs in the text editor of our choice, and we don't have to struggle with an often slow and frustrating web interface to "preview" and "publish" posts. It's faster, more secure, and simpler.


