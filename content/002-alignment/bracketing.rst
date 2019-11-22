***************************
Bracketing and continuation
***************************


Borrowing from Python's PEP 8 Style Guide, specifically the `Code Layout section <https://www.python.org/dev/peps/pep-0008/#code-lay-out>`_


    Continuation lines should align wrapped elements either vertically using Python's implicit line joining inside parentheses, brackets and braces, or using a hanging indent [7]. When using a hanging indent the following should be considered; there should be no arguments on the first line and further indentation should be used to clearly distinguish itself as a continuation line.


I like this variation:

    The closing brace/bracket/parenthesis on multiline constructs...may be lined up under the first character of the line that starts the multiline construct, as in:



Given this:

.. code-block:: sql

    SELECT
        id
        , SUBSTR(SUBSTR(last_name, 1, 5) || SUBSTR(first_name, 1, 10) || middle_name, 4, 7)
            AS messyname
        , age
    FROM person
    ;


Good:

.. code-block:: sql

    SELECT
        id
        , SUBSTR(
            SUBSTR(last_name, 1, 5)
            || SUBSTR(first_name, 1, 10)
            || middle_name
            , 4, 7
          ) AS messyname
        , age
    FROM person
    ;


Bad:

When using vertical alignment, do not put arguments on the first line:

.. code-block:: sql

    SELECT
        id
        , SUBSTR(SUBSTR(last_name, 1, 5)
            || SUBSTR(first_name, 1, 10)
            || middle_name,
            4, 7
          ) AS messyname
        , age
    FROM person
    ;


OK, maybe?

Here, the alias lines up nicely with the other column fields.




.. code-block:: sql


    SELECT
        id
        , SUBSTR(
            SUBSTR(last_name, 1, 5)
            || SUBSTR(first_name, 1, 10)
            || middle_name
            , 4, 7) AS
          messyname
        , age
    FROM person
    ;

(Not sold on the leading comma for the ``SUBSTR()`` arguments, e.g. ``, 4, 7``)
