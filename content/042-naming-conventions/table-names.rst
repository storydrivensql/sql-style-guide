***********
Table names
***********

Names to avoid
==============

Easiest to start with things not to do.

Avoid using reserved keywords
-----------------------------

e.g. user, table


Avoid very generic keywords
---------------------------

Avoid ordinals and numerical labels
-----------------------------------

e.g. if you have a table named ``first_friend`` and ``second_friend``, is there a reason why you simply don't have a single table, ``friend``?



Table names should be singular
==============================

In most real world situations, you will be constrained by the language framework. For example, Rails by convention expects the ``Person`` and ``Apple`` data objects to have corresponding tables named in snakecase plural, e.g. ``people`` and ``apples``.


Great discussion here: https://stackoverflow.com/questions/338156/table-naming-dilemma-singular-vs-plural-names

However, when you have the choice to name things what you want, I recommend using **singular** over **plural** names, by a very slim margin of benefit. Mostly, *singular* is more *consistent*:

- For non-English speakers, nouns with irregular plurals can be very difficult, e.g. ``cacti``, ``attorneys_general``, ``data``, ``people``.
- For some nouns, plural and
- Singular nouns make for easier reading and consistency when you have related concepts across tables. For example, it's very easy to derive ``invoice_detail`` with ``invoice``. But with ``invoices``, it's a little more effort to divine the name ``invoice_details`` — as opposed to, say, ``invoices_detail`` or ``invoices_details``.


There are some arguable aesthetic advantages too:

.. code-block:: sql

    SELECT attorney_general.name, attorney_general.age
    FROM attorney_general;

versus:

.. code-block:: sql

    SELECT attorney_generals.name, attorney_generals.age
    FROM attorneys_general;


And:

.. code-block:: sql

    SELECT invoice.customer_id
    FROM invoice;

    TKTK
