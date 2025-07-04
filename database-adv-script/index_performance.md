    Indexing in Database 

    It helps the database find data faster without checking every row.

    It's like a smart shortcut for your search.

So instead of scanning 1 million rows, it jumps straight to the right one in milliseconds.
✅ Best Practices for Creating Indexes:

    Index columns that are often used in WHERE, JOIN, or ORDER BY
    Example: If you're always searching users by email, index that column.

    Don't over-index!
    Indexes take space and slow down INSERT/UPDATE.
    Use only where performance gains are needed.

    Use composite indexes wisely
    If you often search by both user_id and booking_date, create a combined index: