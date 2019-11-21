***********************
Indentation and spacing
***********************


Keyword alignment
=================

Main clauses, such as ``SELECT`` and ``WHERE``, should be at the beginning of their respective lines and left-aligned.

Arguments should (usually) be on their own line, indented from their respective clauses.


Good:

.. code-block:: sql

    SELECT
        id
        , name
    FROM
        people
    WHERE
        name IS NOT NULL
    ORDER BY
        name ASC
    LIMIT 10
    ;


Bad:

.. code-block:: sql

    SELECT id, name
    FROM people
    WHERE name IS NOT NULL
    ORDER BY name ASC
    LIMIT 10
    ;


Bad (IMHO): right-aligning keywords with the river, as suggested by `sqlstyle.guide <https://sqlstyle.guide>`_

.. code-block:: sql

    SELECT id, name
      FROM people
     WHERE name IS NOT NULL
     ORDER BY name ASC
     LIMIT 10
    ;
