---
layout: post
#
# Content
#
subheadline: "Exploring the decisions behind FAIMS architecture"
title: "Choosing the right mobile application platform; Android, iOS or cross-platform?"
teaser: "We at FAIMS team get often asked:'Why Android? Is this due to some ideological attachment to Google?' Not quite. Our reasons were more complex and much more practical than that."
categories:
  - Reflections
author: Adela
header:
    image_fullwidth: Platform.jpg
    caption: "Martin Falbisoner: U1 München Westfriedhof"
    caption_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Westfriedhof_zentral.JPG/1200px-Westfriedhof_zentral.JPG"
#
# Styling
#
---
In this post I would again like to use a piece of [Ben Carter's 29 January 2016 post](http://commons.digitalarchaeology.msu.edu/digitaldatacollection/2016/01/29/new-version-of-a-robust-open-flexible-and-offline-digital-data-collection-in-the-field/) as a jumping off point to discuss basic mobile app architecture. What I mean by this is the choice to build something in native Android, native iOS. something like Adobe phoneGap, or Titanium Appcelerator, or pure [HTML5](https://en.wikipedia.org/wiki/HTML5). 

Ben recommends HTML5. Which development "stack" (programming languages and technologies) to use is a decision that needs to be taken with care, as it has serious implications on many aspects of development, performance, and usability. We are asked frequently why we chose Android and whether this was due to an ideological attachment to Google. Our reasons were more complex and, in fact, much more practical than that.

First, a few words, why we chose in 2012 to build FAIMS app in native Android (Java):

As HTML5 was [not declared officially complete till 2014](http://motherboard.vice.com/blog/html5-is-quietly-changing-the-landscape),  we had these choices: native Android, native iOS, or a cross platform "cross-compilation solution" (which could take HTML and Javascript and turn it into an app) such as phoneGap. At that time, two reasons compelled us to do native development. One was performance. We needed to support GIS, do complex database queries on 2012 devices, and aim to match paper recording in speed and responsiveness. Cross-platform compiled solutions could do none of the above -- slowly.

The other reason, which we learnt after two months of technical elaboration, was that it was impossible to support the range of sensors by means of a cross-platform compiled solution.  We needed to make calls on the internal GPS, external bluetooth devices like GPS receivers, scales, keyboards, mice, digital calipers, (and aspirationally Total stations and DSLR cameras). Cross-platform architecture was unreliable in the support of external sensors.

Having determined that for performance and external sensor reasons we had to develop in native code, we had to decide between Windows Mobile, iOS and Android. Windows Mobile was easy to dismiss because they were a bit-player in the mobile world, a situation that has not really changed since then (some devices like Surface may make us reconsider). The choice between iOS and Android was more difficult, but a number of factors led us to the latter:

* Openness to open-source development: Android is more open-source friendly than iOS
* Pragmatics of development: iOS had many requirements for development, including specific hardware you can do development on through to rules for many aspects of the final application. This approach leads to UI consistency, but compliance was difficult with our limited budget.
* Hardware flexibility: Android had a wider range of device form factors available to users. Even in 2012, phones from 4-6" and tablets from 7 - 10", with and without styluses, were available in the Android ecosystem. This range was suited the range of activities that archaeologists engaged in.
* Cost: in 2012 - 2015 the cost of Android flagship devices was markedly lower than the corresponding Apple devices, a consideration for adoption and ease of use
* Market share: despite the popularity of iOS among western academics, in the world market Android has the largest userbase. We had hoped from the beginning to help users in transitional economies to use digital recording inspired by our own fieldwork in Bulgaria).

This was the landscape in 2012 that led us to use native Android for the FAIMS mobile application.

Fast forward to 2017. Next year we plan to engage in a new round of stocktaking and technical elaboration to see if it is time, after 5 years, to reconsider our entire platform. A lot has changed in the 5 years - it represents half of the mobile development era (since 2007). Decisions about these changes will involve the entire community, but we have a couple ideas to start the discussion here. 

The changes:
 
* HTML5 - as Ben recognizes - has been a major new development. While primarily intended to present multimedia on the web, it is now being used as a *native* framework to build entire [offline apps](http://motherboard.vice.com/blog/html5-is-quietly-changing-the-landscape).
* Devices more capable: Apple has introduced a wider range of devices, including some that use styluses. The range of Android devices has also increased, including devices with windowing capability (Remix Ultra tablet) , such as used on the * desktop. Microsoft has released some very capable and portable devices that run full blown windows, rather than a mobile system ( Surface line). Ubuntu will now run on phones, bringing another an OS desktop operating system on mobile devices
* HTML5 has a [geolocation API](http://geospatialtraining.com/introduction-to-the-html5-geolocation-api/) which allows applications to use onboard GPS,  and [promises others](http://blog.teamtreehouse.com/exploring-javascript-device-apis)
* New GIS native Android GIS software exists (QField - this will be a subject for a later post)

What hasn't changed:

* Capability, is still better on native application in any platform. Yes, devices have gotten better, but user demands have also increased. We now have projects whose offline digital recording can tax even the most capable devices. Even now typical mobile software approaches expect that the devices will be supported by online servers at all times, something that the archaeologists cannot guarantee.
* Cross-platform approaches still have difficulty with external sensors. (There is a [standard in the works](https://developers.google.com/web/updates/2015/07/interact-with-ble-devices-on-the-web?hl=en) for Bluetooth 4 -- but nothing has been agreed upon nor implemented.)
* Android is still better for open-source development. Android is still a more flexible ecosystem.
* Useful Android devices are still less expensive than iOS devices. Google flagship devices are the same price as Apple devices, Android devices still offer real bargains on devices, such as Nvidia Shield which costs USD199, and there is still a wider range of devices in the Android.
* [Android (in all its versions)](https://www.netmarketshare.com/operating-system-market-share.aspx?qprid=10&qpcustomd=1) is still the widest used mobile platform around the world, while iOS is still the most popular among western academics.

So the conclusion is: HTML5 is promising as a cross-platform offline-capable solution. Its potential for mobile applications in archaeology, however, will depend on which features the archaeologists cannot live without. 









