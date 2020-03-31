---
author: denubis
comments: true
date: 2013-04-14 06:54:20+00:00
layout: page
slug: for-our-more-technical-readers-links-to-our-repositories
title: For our more Technical Readers... links to our code
wordpress_id: 818
categories:
- News
---

A short discussion of the tools needed to play with the faims android application today.

To play with the following, you'll want:

* something somewhat beefy (couple gigs of ram, a modern processor, etc..) running linux (we like Ubuntu 12.04. If you can argue flavours of linux with us, you can run it on anything you want).

* An access point (we quite like the TP-link wireless N access point series. They're cheap, they do DHCP, and they don't get in the way.

* An Android 4 tablet with usb debugging and developer mode enabled. (While you can run this on phones, all of our UIs tend to get rather too compressed on a 4inch phone.)

Join the following group:

* [https://groups.google.com/a/fedarch.org/forum/?fromgroups#!forum/usergroup](https://groups.google.com/a/fedarch.org/forum/?fromgroups#!forum/usergroup)

* This is a "technical user's group" where we can discuss crunchy technical things.

Our code is available at:

* Mobile App:

* [https://github.com/IntersectAustralia/faims-android](https://github.com/IntersectAustralia/faims-android)

* [https://github.com/IntersectAustralia/faims-web](https://github.com/IntersectAustralia/faims-web)

* Mobile app "module/project" examples:

* [https://github.com/IntersectAustralia/faims-android/tree/master/faims-android-app/projects](https://github.com/IntersectAustralia/faims-android/tree/master/faims-android-app/projects)

* Repository:

* [https://bitbucket.org/tdar](https://bitbucket.org/tdar)

Faims-web is a ruby server to run communications for the android app. Its wiki has installation instructions. It needs to be hooked up to the AP to best represent and play with offline mode, but can play on any local network that doesn't filter UDP.

Faims-android is the android code (deployable via eclipse). An APK is available [here](http://fedarch.org/faims-android-app.apk).  And a *rather* large tarball (159mb) of our sample projects (with various geotiffs) is available [here](http://www.fedarch.org/projects.tar.bz2). (All maps and images copyright their respective owners, used for testing purposes only.).

Extract that tarball to your computer, then put the uuid'd folders in /sdcard/faims/projects/ on your android such that you have

* /sdcard/faims/projects/04d7fc10-a5cb-47ac-b01f-c6988ee2a7f1/

* /sdcard/faims/projects/20b02926-d8a0-4a9d-bd97-2e38de2640fa/

and so on.

Then run the app.

Remember, all of this is pre-alpha and everything's going to be rather more polished in a few months.

We haven't decided on an exact library/system for our "module" or solution hosting, but I suspect that the code will also have a copy on github, just so we can track both changes and forks as later projects use earlier ones for inspiration.

Limited tech support is currently available for our partners, contributors and supporters.
