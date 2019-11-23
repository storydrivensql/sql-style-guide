*******************************
Making comparisons and stuff TK
*******************************


Alignment of boolean operators
==============================

Each ``AND`` and ``OR`` should have its own line:


Bad:

.. code-block:: sql

    SELECT
        name, country
    FROM person
    WHERE
        age >= 19 AND gender = 'M'
    ;

Good:

    SELECT
        name, country
    FROM person
    WHERE
        age >= 19
        AND gender = 'M'
    ;


Using parentheses to group logical comparisons
----------------------------------------------

TKTK



BETWEEN instead of AND for ranges
=================================


Bad:

.. code-block:: sql

    SELECT
        name, gender
    FROM
        person AS boomer
    WHERE
        age >= 18
        AND age <= 35



Good:

.. code-block:: sql

    SELECT
        name, gender
    FROM
        person AS boomer
    WHERE
        age BETWEEN 18 AND 35



For lists, ``IN`` instead of ``OR``
===================================
