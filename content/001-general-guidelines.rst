******************
General guidelines
******************

blah blah Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo

Be consistent
=============

Always capitalize reserved keywords, such as ``SELECT`` and ``WHERE``.

Follow PostgreSQL's strictness
==============================

A common workflow is to start in SQLite and then move to PostgreSQL, a more full-featured but equally free and well-loved database. SQLite is fairly lax and lenient in what it accepts, PostgreSQL isn't. For this guide, I'll almost always recommend following PostgreSQL's more strict conventions:

https://wiki.postgresql.org/wiki/PostgreSQL_vs_SQL_Standard



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



Conciseness when possible
=========================

- Use IN and BETWEEN
- Compact logical expressions


But not too concise
===================


Bad:

.. code-block:: sql

    SELECT firstname first_name
    FROM person adult
    WHERE age > 19;
