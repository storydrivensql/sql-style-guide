*************
Concatenation
*************

One line for trivial concatenations

Good:

.. code-block:: sql

    SELECT
        (first_name || ' ' || last_name)
          AS full_name
        , age
        , country
    FROM person;


For multi-line concatenations, lead with ``||``
