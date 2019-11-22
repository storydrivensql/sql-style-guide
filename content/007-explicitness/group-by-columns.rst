
When doing ``GROUP BY``, do not select columns that won't be aggregated
=======================================================================

SQLite, lenient language that it is, will not throw an error on this:

.. code-block:: sql

    SELECT
        school_id
        , school_name
        , COUNT(*) AS population
        , MAX(grade) AS oldest_grade
    FROM student
    GROUP BY school_id
    ;


However, a stricter language like PostgreSQL *will*. So get in the habit of not selecting columns that you aren't grouping by — in this case, ``school_name``:


.. code-block:: sql

    SELECT
        school_id
        , COUNT(*) AS population
        , MAX(grade) AS oldest_grade
    FROM student
    GROUP BY school_id
    ;



But what if you need the school name, and you assume/believe that each school_id corresponds to exactly one school name? Then nothing wrong with grouping by both school_id and school_name:


.. code-block:: sql

    SELECT
        school_id
        , school_name
        , COUNT(*) AS population
        , MAX(grade) AS oldest_grade
    FROM student
    GROUP BY
        school_id, school_name
    ;


However, if you're assumption is wrong, well, that reveals *another* nice upside of being explicit. You can immediately see in the results the inconsistency



Even if you never plan on doing SQL outside of SQLite's forgiving syntax, it's important to avoid being sloppy, because you can get results that don't throw an error, but also don't make any real world sense:


.. code-block:: sql

    SELECT
        first_name
        , party
        , AVG(age) AS average_age
    FROM legislator
    ;


TKTK: The first_name field ends up signifying nothing at best, and being a major distraction at worst, especially if you end up publishing that data table.
