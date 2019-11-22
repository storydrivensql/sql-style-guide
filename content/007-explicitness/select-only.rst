***********************************************
Select only what you need, don't be an all star
***********************************************



Bad:

.. code-block:: sql

    SELECT *
    FROM legislator;


Good:

.. code-block:: sql

    SELECT last_name, first_name
    FROM legislator;





Arrange the columns exactly as you want to see them
===================================================



Good:

.. code-block:: sql

    SELECT
        party
        , state
    FROM legislator
    ORDER BY
        party ASC
        , state ASC
    ;

Bad: the following arrangement makes it harder to see the party breakdown TKTK

.. code-block:: sql


    SELECT
        state
        , party
    FROM legislator
    ORDER BY
        party ASC
        , state ASC
    ;
