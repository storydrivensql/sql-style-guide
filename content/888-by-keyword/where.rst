**********
WHERE tips
**********


Always put arguments on a separate line, even when the arguments are few and short.



Bad:

.. code-block:: sql

    SELECT name
    FROM person
    WHERE age > 50
    ;


Good:

.. code-block:: sql

    SELECT name
    FROM person
    WHERE
        age > 50
    ;
