
**********************
``SELECT`` syntax tips
**********************


Don't use ``SELECT *``
======================


Bad:

.. code-block:: sql

    SELECT *
    FROM person;


Good:

.. code-block:: sql

    SELECT name
    FROM person



More: :doc:`/content/007-explicitness/select-only`


One column name per line
========================


Bad:

.. code-block:: sql

    SELECT
        firstname, middlename, lastname
    FROM person;


Good:

.. code-block:: sql

    SELECT
        firstname
        , middlename
        , lastname
    FROM person;


OK (assuming you don't need ``middlename``, obviously):


.. code-block:: sql

    SELECT
        firstname, lastname
    FROM person;



More: :doc:`/content/002-alignment/indentation`





.. include:: /content/007-explicitness/group-by-columns.rst
