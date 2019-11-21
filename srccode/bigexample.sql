WITH bills AS (
    SELECT
        first_name
        , last_name
        , SUM(price) AS outstanding
    FROM purchases
    GROUP BY
        customer_id
)

SELECT
    customers.id AS customer_id
    , customers.first_name
    , customers.last_name
    , bills.outstanding
FROM
    db_customers_alltbl AS customers
INNER JOIN
    bills USING(first_name, last_name)
WHERE
    customers.activation_date > '1999'
    AND bills.outstanding > 0
    AND customer_id IS NOT NULL
ORDER BY
    outstanding DESC
    , customers.last_name ASC
    , customers.first_name ASC
LIMIT 10
;
