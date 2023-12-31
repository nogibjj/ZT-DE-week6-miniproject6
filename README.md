[![CI](https://github.com/nogibjj/ZT-DE-week6-miniproject6/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/nogibjj/ZT-DE-week6-miniproject6/actions/workflows/pythonapp.yml)
# ZT-DE-week6-miniproject6

# Complex SQL Query explanation

This query is designed to provide insights into the sales performance of authors in the year 2022. Specifically, it lists the top 5 authors by revenue generated from their book sales within that year.

## 1. Query breakdown:
<img src="Screenshot%20from%202023-10-07%2018-03-21.png" alt="Screenshot">

Components:
## 2. Tables Involved:

authors: Contains details about authors, including their ID and name.
books: Contains details about books, including their associated author, publication year, and price.
sales: Contains records of book sales, including the book ID, sale date, and quantity sold.

## 3. Joins:

The query begins by selecting from the authors table, aliased as 'a'.
It then joins with the books table (aliased as 'b') on the author_id to correlate authors with their books.
Finally, it joins with the sales table (aliased as 's') on the book_id to correlate books with their sales records.

## 4. Filtering:

The WHERE clause filters the results to only consider sales records from the year 2022.

## 5. Aggregation:

The SUM function calculates the total revenue for each author. This is done by multiplying the price of a book (b.price) with the quantity sold (s.quantity_sold).
Results are grouped by author_id and name ensuring that revenues are aggregated per author.

## 6. Sorting and Limiting:

Results are ordered in descending order by total_revenue, ensuring the top-performing authors are listed first.
The LIMIT 5 clause restricts the output to only show the top 5 authors by revenue.

## Result:
The resulting output of this query provides a list of the top 5 authors who generated the highest revenue from their book sales in 2022. Each record in the result consists of the author_id, author_name, and their respective total_revenue.
