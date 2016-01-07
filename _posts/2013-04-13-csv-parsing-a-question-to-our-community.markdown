---
author: denubis
comments: true
date: 2013-04-13 12:56:32+00:00
layout: post
slug: csv-parsing-a-question-to-our-community
title: 'CSV parsing: a question to our community'
wordpress_id: 804
categories:
- News
---

Consider, consider:

UUID,GeoSpatialColumn,name,value,timestamp,type,location,picture,supervisor

1000011365058823906,None,"{None, None, brian, 1.0}",,"{None, None, 2013-04-04 17:59:58, None}","{Type C, None, , 1.0}","{Loc B, None, foo, 0.46}; {Loc C, None, foo, 0.46}; {Loc D, None, foo, 0.46}","{cugl69808.jpg, None, , 1.0}","{None, None, superc, 1.0}"

There are some novel formulations in there that are a function of our data structure. The first is the repeating pattern of:

"{None, None, brian, 1.0}" which represents our "inner" multi-valued knowledge representation. Specifically, it represents the "Vocab Name" (none, it's not a vocab), the measure (none of these are a measure.), the "freetext", and the Certainty.

Then there's the repeating repeating pattern of the "Loc B, Loc C, Loc D" tuples, which represents a user-selected multi-valued attribute.

To a large degree, any given tuple-as-column will likely be filled in consistently by the user, which allows for refinement to happen after the user gets the data.

However, the current csv structure basically supports a boolean "in-text" search for presence/absence of a term, and tabular analysis on that search. For our community, is that level of search acceptable in a CSV? Especially as the "real" data is in the database that can be accessed by basically anything?

If it's not, what kind of research do you do with a CSV?

Please! Tell me!
