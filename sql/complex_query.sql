SELECT 
    a.author_id,
    a.name AS author_name,
    SUM(b.price * s.quantity_sold) AS total_revenue
FROM
    authors a
JOIN
    books b ON a.author_id = b.author_id
JOIN
    sales s ON b.book_id = s.book_id
WHERE
    YEAR(s.sale_date) = 2022
GROUP BY
    a.author_id, a.name
ORDER BY
    total_revenue DESC
LIMIT 5;
