Instead of using `WHERE column LIKE '%value'`, consider these alternatives:

1. **Reorganize the query:** If possible, restructure the query to avoid leading wildcards. For example, if you're searching for values ending with a specific string, use a trailing wildcard (`'value%'`).
2. **Use full-text search:** For natural language searches involving leading wildcards, databases often have full-text search capabilities that are optimized for this kind of search.  Explore your database's specific full-text search functions.
3. **Indexing:** If you're dealing with frequent searches on that column, ensure an appropriate index is created on that column.  But a leading wildcard generally means the index is not usable.  Reorganizing or using full text search is more likely to be efficient.
4. **Avoid leading wildcards:** Carefully examine the need for this query.  If possible, modify the input, search logic, or create a temporary table to avoid this structure if possible.