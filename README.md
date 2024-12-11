# Inefficient Wildcard Usage in SQL LIKE Clause

This repository demonstrates a common performance issue in SQL queries involving the `LIKE` clause with a leading wildcard character.  Using `%value` in a `LIKE` clause prevents the database from using indexes effectively, leading to significantly slower query execution times, especially with large datasets. The solution shows how to improve performance by reorganizing the query or using full-text search if appropriate.

## Bug

The provided `bug.sql` file contains an SQL query that uses `%value` pattern in the `LIKE` clause. This query will be very slow for larger datasets.

## Solution

The `bugSolution.sql` file demonstrates improved approaches. These may involve alternative query structures or, if applicable, utilizing full-text search capabilities for faster searches with leading wildcards.