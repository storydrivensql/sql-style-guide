**************
Leading commas
**************

This is likely this book's most controversial style opinion.

Given a statement with a list of columns like this:

.. code-block:: sql

    SELECT name, age, height
    FROM person

Leading commas style is:


.. code-block:: sql

    SELECT name
         , age
         , height
    FROM person


The standard style is:


.. code-block:: sql

    SELECT name
         , age
         , height
    FROM person


Instead of placing commas between terms, as we do in normal English (and many programming languages), I advocate to put the commas *before*




Benefits of leading commas
==========================


Listing columns is easy
-----------------------

Early on in this guide, I argued that you should avoid selecting columns you don't need. Of course, the main reason why we over-select is because this:

.. code-block:: sql

    SELECT *
    FROM data;

Is so much easier than writing out each column name:

.. code-block:: sql

    SELECT apple, banana, chowder
           dog, elephant,
    FROM data;

Nevermind doing this and avoiding syntax errors — did you notice the erroneous trailing comma after ``elephant``, and the missing comma after ``choswer``?


One way to avoid syntax errors when listing the columns is to put one column on each line. Which is still *work*, but it's cleaner. I like to list and align all the column names *before* adding commas. Given the following SQL below:

.. code-block:: sql

    SELECT
      apple
      banana
      chowder
      dog
      elephant
    FROM data;


I find it much faster to add a leading comma to each line, since it's always in the same column for each row:

.. code-block:: sql

    SELECT
      apple
      , banana
      , chowder
      , dog
      , elephant
    FROM data;

Whereas with the trailing-comma style, each line has a different length, and thus, differently aligned line-end positions. It's not as easy to navigate from line-end to line-end:


.. code-block:: sql

    SELECT
      apple,
      banana,
      chowder,
      dog,
      elephant
    FROM data;





Easy rearrangement and aliasing
-------------------------------

Given this:


.. code-block:: sql

    SELECT
      firstname,
      mi,
      lastname,
      10 * ROUND(age / 10.0),
      country
    FROM person;


How fast can you rearrange the column order?

.. code-block:: sql

    SELECT
      country,
      10 * ROUND(age / 10.0),
      lastname,
      firstname,
      mi
    FROM person;

How fast can you alias the columns, then rearrange them?


.. code-block:: sql

    SELECT
      country,
      10 * ROUND(age / 10.0) AS nearest_decade,
      lastname AS last_name,
      firstname AS first_name,
      mi AS middle_initial
    FROM person;


Now try it with leading commas:

.. code-block:: sql

    SELECT
      firstname,
      , mi
      , lastname
      , 10 * ROUND(age / 10.0)
      , country
    FROM person;




Error detection
---------------

As I've said before, we spend more time reading code than writing it. And often times, we're reading code in order to debug it.


Try to find the syntax error(s) in this SQL statement that uses the standard style of commas:

.. code-block:: sql

    SELECT
          customer.id AS customer_id,
          (customer.last_name || ', ' || customer.first_name)
            AS customer_full_name,
          invoice.date_signed AS invoice_date
          ROUND(invoice.amount / 1000.0, 1) AS amount_due_in_thousands,
          invoice.manager_name AS manager
    FROM customer
    INNER JOIN invoice ON
        customer.id = invoice.customer_id
    ORDER BY
        customer_full_name ASC
        invoice_date DESC,
        amount_due_in_thousands, DESC
    ;



Notice how much more the missing commas stick out when we expect them to lead each line:


.. code-block:: sql

    SELECT
          customer.id AS customer_id
        , (customer.last_name || ', ' || customer.first_name)
            AS customer_full_name
        , invoice.date_signed AS invoice_date
          ROUND(invoice.amount / 1000.0, 1) AS amount_due_in_thousands
        ,  invoice.manager_name AS manager
    FROM customer
    INNER JOIN invoice ON
        customer.id = invoice.customer_id
    ORDER BY
        customer_full_name ASC
          invoice_date DESC
        , amount_due_in_thousands, DESC
    ;


BTW here's the fixed version:


.. code-block:: sql

    SELECT
          customer.id AS customer_id
        , (customer.last_name || ', ' || customer.first_name)
            AS customer_full_name
        , invoice.date_signed AS invoice_date
          ROUND(invoice.amount / 1000.0, 1) AS amount_due_in_thousands
        ,  invoice.manager_name AS manager
    FROM customer
    INNER JOIN invoice ON
        customer.id = invoice.customer_id
    ORDER BY
        customer_full_name ASC
        , invoice_date DESC
        , amount_due_in_thousands DESC
    ;


How leading commas force consistency
------------------------------------

Each leading comma denotes exactly one argument per line:

.. code-block:: sql

    SELECT
      id
      , name
      , age
      , country
      , favorite_philosophical_saying
    FROM person
    ;

This (somewhat) dissuades us from piling on short arguments when possible:



.. code-block:: sql

    SELECT
      id, name, age
      , country, favorite_philosophical_saying,
    FROM person
    ;


When using trailing commas, it is arguably more natural to act less consistently here:

.. code-block:: sql

    SELECT
      id, name, age,
      country, favorite_philosophical_saying
    FROM person
    ;



Doing it with leading commas feels decidedly less natural.

.. code-block:: sql

    SELECT
      id, name, age
      , country, favorite_philosophical_saying
    FROM person
    ;

And it much more obviously looks awry and disjoint. Below, I emphasize how the  misaligned commas at the start of lines 2 and 3 really stand out:

.. code-block:: sql

    id, name
    , country,

Cleaning up compound expressions
--------------------------------


.. code-block:: sql

    SELECT
        id
        , date
        , (last_name || ', ' || first_name || ','
          || zipcode) AS customer_info
        , amount
    FROM invoice;


versus:

.. code-block:: sql

    SELECT
        id,
        date,
        (last_name || ', ' || first_name || ','
           || zipcode)
           AS customer_info,
        amount
    FROM invoice;

(need a better example of this)


Disadvantages of leading commas
===============================

Not what we're accustomed to in normal English
----------------------------------------------


Most people don't do them
-------------------------

Great research by Felipe Hoffa:

`Leading with commas — ugly or efficient? An investigation over 320 GB of SQL code <https://towardsdatascience.com/winning-arguments-with-data-leading-with-commas-in-sql-672b3b81eac9>`_
