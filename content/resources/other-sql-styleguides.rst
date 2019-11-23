**************************************************
Other SQL Styleguides, and how they comare to mine
**************************************************

I wrote this guide because there weren't many comprehensive style guides or discussions when it came to SQL. That doesn't mean there aren't any. This section lists the ones I've liked and read and borrowed/stole from, as well as a summary of where they and I differ.


Julia Evans sql-zines
=====================

Evans's are less style guides and more syntax/concept lessons, but they're so well-written and delightful that they inspired me to finish my own writings on SQL, which I had grown to see as a dreary burden. Evans's work is the opposite of dreary and I wish I had her talent.


- `how joins work <https://twitter.com/b0rk/status/1177642768484712449/photo/1>`_
- `SQL exercises: GROUP BY <https://twitter.com/b0rk/status/1182361078937862144>`_
- `sometimes one query isn't enough <https://twitter.com/b0rk/status/1180117134808145920/photo/1>`_
- `A screenshot of the sql zine pages she produced so far <https://twitter.com/b0rk/status/1195179166121054210/photo/1>`_

Kickstarter's SQL Style Guide via Fred Benenson
===============================================

URL:
    https://gist.github.com/fredbenenson/7bb92718e19138c20591

Last revised:
    2016-01-29


This SQL style guide is a single Gist and is shared as a manual among Kickstarter's data team.

Concise, well-written, with a nice layout that's easy on the eyes and easy to parse.  The SQL variant that Kickstarter uses is AWS Redshift and Postgres, but "much of it can be applied to any SQL database".

This guide is authored by `Fred Benenson <http://fredbenenson.com/>`_, who has since moved on from Kickstarter. However, I could not find an updated, official manual, and `Kickstarter's engineering blog <https://kickstarter.engineering/our-sql-style-guide-8a1c24a6fe0f>`_ links to Benenson's gist.



What I liked and borrowed
-------------------------

- The affirmation of snakecase
- His explanation for being explicit with ``INNER JOIN``: https://gist.github.com/fredbenenson/7bb92718e19138c20591#join
- TK

What I disagreed with
---------------------

- His affirmation of trailing-comma style
- TK



Simon Holywell's SQL Style Guide
================================

URL:
    https://www.sqlstyle.guide/

Holywell's styleguide not only has killer SEO, placing it at the top of Google results when searching for "sql styleguide", but it is comprehensive and well-organized.


What I liked and borrowed
-------------------------

- His affirmation of snakecase
- His affirmation of ISO-8601
- An emphasis on the importance of good naming conventions
- The use of standard SQL functions instead of vendor-specific
- The line-spacing principles https://www.sqlstyle.guide/#line-spacing
- TK

What I disagreed with
---------------------

- Right-aligning keywords with a river; I don't know how to create and maintain that with a standard text editor (i.e. with default auto-indenting behavior). Also, it seems to break down when writing compound and nested queries.
- Not sure I agree with all the uniform suffixes, or if that needs to be covered in this kind of guide
- Use of nested queries over CTEs
- Should schema design be part of a style guide?
- TK


Related links for Hollwell's sqlstyle.guide
-------------------------------------------

- `SQL style guide misconceptions <https://www.simonholywell.com/post/2016/12/sql-style-guide-misconceptions/?utm_source=sqlstyle.guide-sqlstyle.guide&utm_medium=link&utm_campaign=footer-link>`_: a blog post Holywell wrote to address frequent complaints he's seen about his guide.
- `Hacker News discussion on 2016-10-09 <https://news.ycombinator.com/item?id=12671667>`_
- `Various Reddit discussions <https://www.reddit.com/r/SQL/duplicates/3efmn0/sql_style_guide_a_consistent_code_guide_ensuring/>`_

Firefox Data Documentation SQL Style Guide

Firefox Data Documentation SQL Style Guide
==========================================

URL:
    https://docs.telemetry.mozilla.org/concepts/sql_style.html

Gitlab's SQL Style Guide
========================

URL:
    https://about.gitlab.com/handbook/business-ops/data-team/sql-style-guide/



- `12 Common Mistakes and Missed Optimization Opportunities in SQL Made by Developers and Non-Developers <https://hakibenita.com/sql-dos-and-donts>`_: this is a great writeup that features not just style tips, but optimizations and anti-patterns to be aware of.
