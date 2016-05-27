---
layout: post
#
# Content
#
subheadline: "Discussion on Digital Archaeology Commons"
title: "FAIMS is not a walled garden: A Response to Ben"
teaser: "What exactly is FAIMS Mobile and where it stands among digital data capture tools? FAIMS is responding to a recent post on DAC"
categories:
  - Reflections
author: Adela
image:
    title: Platform.jpg
    caption: "Martin Falbisoner: U1 München Westfriedhof"
    caption_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Westfriedhof_zentral.JPG/1200px-Westfriedhof_zentral.JPG"
#
# Styling
#
---
In this post I will again use a piece of [Ben Carter's 29 January 2016 post](http://commons.digitalarchaeology.msu.edu/digitaldatacollection/2016/01/29/new-version-of-a-robust-open-flexible-and-offline-digital-data-collection-in-the-field/) as a jumping off point to discuss basic mobile application architecture. What I mean by this is the choice to build something for field recording in native Android, native iOS, something like Adobe PhoneGap or html5. 

Ben Carter recommends html5. This is a decision that needs to be taken with care, as it has serious implications on many aspects of development, performance and usability. We get asked frequently why we chose Android, and whether this was due to an ideological attachment to Google. The situation is more complex and , in fact, our reasons were much more practical than that.

First, a few words, why we chose in 2012 to build FAIMS app in native Android (Java):

As html5 was not released till 2014, we had these choices: native Android, native iOS, or cross platform such as phoneGap. At that time, two reasons compelled us to do native development. One was performance. We needed to support GIS, do complex hierarchical databases on 2012 devices, and aim to match paper recording in speed and responsiveness, so we could not take the penalty that the performance would suffer with a cross platform architecture. 

The other reason was - after 2 months of elaboration - we learnt that it was impossible to support the range of sensors by means of cross-platform systems.  We needed to make calls on the internal GPS, external bluetooth devices like GPS receivers, scales, keyboards, mice, digital calipers, (and aspirationally connect to Total stations and dslrs). Cross-platform architectures was unreliable in the support of external sensors.

So having determined that for performance and external sensor reasons, we had to develop in native code, we had to decide between WIndows, iOS and Android. Windows were easy to dismiss because they were a bit-player in the mobile world, a situation that has not really changed since then (some devices like SUrface may make us reconsider). The choice between iOS and Android was more difficult, but a number of factors led us to the latter:

* Openness to open-source development: Android is more amenable than iOS
* Pragmatics of development: iOS had many requirements for development, including specific hardware you can do development on through to rules for many aspects of the final application. This approach leads to consistency, but some things (apk loading) were difficult with our limited budget
* Hardware flexibility: Wider range of device form factors available to users (even in 2012, phone from 4-6" and tablets from 7 - 10" , with and without styluses were available in the Android ecosystem, something that suited the range of activities that archaeologists engaged in)
* Cost: in 2012 - 2015 the cost of Android flagship devices was markedly lower than the corresponding Apple devices, a consideration for adoption and ease of 
* Market share: despite the popularity of iOS among western academics, in the world market Android has the largest userbase. We had hope from the beginning to help users in transitional economies use digital recording(inspired by our own fieldwork in Bulgaria).

This was the landscape in 2012 that led us to use native Android for the FAIMS mobile application.







