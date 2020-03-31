---
author: denubis
comments: true
date: 2013-02-19 08:07:23+00:00
layout: page
slug: some-light-sql-to-finish-your-day
title: Some light SQL to finish your day.
wordpress_id: 569
categories:
- News
---

One of the more interesting queries I worked on yesterday was this:

<code class="language-sql">

SELECT uuid, aenttypename, attributename, coalesce(vocabname, measure, freetext) as responce, vocabid, attributeid

FROM (SELECT uuid, attributeid, aenttypename

FROM (SELECT aenttypeid, attributeid, aenttypename

FROM idealaent join aenttype using (aenttypeid)

WHERE isIdentifier = 'true')

JOIN (SELECT uuid, aenttypeid

FROM archentity

WHERE deleted is null

GROUP BY uuid

HAVING max(aenttimestamp)

LIMIT 3

OFFSET 0) USING (aenttypeid)

)

JOIN aentvalue USING (uuid, attributeid)

JOIN attributekey using (attributeid)

LEFT OUTER JOIN vocabulary USING (vocabid, attributeid)

GROUP BY uuid, attributeid

HAVING max(valuetimestamp);

</code>

We use it to make something like:

[gallery link="file"]

Be tantalized.
