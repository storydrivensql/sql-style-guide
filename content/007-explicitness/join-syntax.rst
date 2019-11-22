***********
Join syntax
***********

``INNER JOIN`` not just  ``JOIN``
=================================

By default, the ``JOIN`` keyword represents an **inner join**. Thus, the two following queries are equivalent:

.. code-block:: sql

    SELECT *
    FROM student
    JOIN school
        ON student.school_id = school.id
    ;


    SELECT *
    FROM student
    INNER JOIN school
        ON student.school_id = school.id
    ;



So why write out ``INNER JOIN``? For queries that involve multiple types of joins, such as ``LEFT JOIN``, the long version of ``INNER JOIN`` visually aligns better than does just ``JOIN``:


Good:

.. code-block:: sql

    SELECT *
    FROM student
    INNER JOIN school
        ON student.school_id = school.id
    LEFT JOIN county
        ON school.county_id = county.id
    ;


Bad:

.. code-block:: sql

    SELECT *
    FROM student
    JOIN school
        ON student.school_id = school.id
    LEFT JOIN county
        ON school.county_id = county.id
    ;



More explanation via Kickstarter guide: https://gist.github.com/fredbenenson/7bb92718e19138c20591#join
