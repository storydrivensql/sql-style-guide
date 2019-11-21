******************
General guidelines
******************

Be consistent
=============

Always capitalize reserved keywords, such as ``SELECT`` and ``WHERE``.


Be explicit
===========

When humanly feasible, write out only the fields you need to include in a ``SELECT`` query, rather than ``SELECT *``.

Explicitly write optional syntax, such as ``AS``:


Good:

.. code-block:: sql

     SELECT surname AS last_name
     FROM copy_of_payroll AS employees;


Bad:

.. code-block:: sql

     SELECT surname last_name
     FROM copy_of_payroll employees;



Ease of editing is important
============================

Use leading commas.

Put statement-ending semicolon on its own line.
