//Write a SELECT statement to find all incomplete todos.


id |       name        |     details     | priority |         created_at         |        completed_at
----+-------------------+-----------------+----------+----------------------------+----------------------------
 8 | brosse mes dents  | toute les dents |        1 | 2017-08-28 15:28:23.159453 | 2017-08-28 15:28:23.159453
14 | Mach meines Bett  | mit lacheln     |        2 | 2017-08-28 15:53:29.222159 |
15 | Laufen um bischen | mit lacheln     |        3 | 2017-08-28 15:53:53.810539 |
16 | Iss gemusen       | mit lacheln     |        4 | 2017-08-28 15:53:53.814362 |
17 | Schlag ein Nazi   | mit lacheln     |        5 | 2017-08-28 15:53:59.839644 |



Write a SELECT statement to find all todos with a priority above 1.
todolistdb=# select * from todos where priority>1;

 id |       name        |   details   | priority |         created_at         | completed_at
----+-------------------+-------------+----------+----------------------------+--------------
 14 | Mach meines Bett  | mit lacheln |        2 | 2017-08-28 15:53:29.222159 |
 15 | Laufen um bischen | mit lacheln |        3 | 2017-08-28 15:53:53.810539 |
 16 | Iss gemusen       | mit lacheln |        4 | 2017-08-28 15:53:53.814362 |
 17 | Schlag ein Nazi   | mit lacheln |        5 | 2017-08-28 15:53:59.839644 |
(4 rows)


Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

id |       name        |     details     | priority |         created_at         |        completed_at
----+-------------------+-----------------+----------+----------------------------+----------------------------
 8 | brosse mes dents  | toute les dents |        1 | 2017-08-28 15:28:23.159453 | 2017-08-28 15:28:23.159453
14 | Mach meines Bett  | mit lacheln     |        2 | 2017-08-28 15:53:29.222159 |
15 | Laufen um bischen | mit lacheln     |        3 | 2017-08-28 15:53:53.810539 |
16 | Iss gemusen       | mit lacheln     |        4 | 2017-08-28 15:53:53.814362 |
17 | Schlag ein Nazi   | mit lacheln     |        5 | 2017-08-28 15:53:59.839644 | 2017-08-28 16:01:51.176834


Write a DELETE statement to delete all completed todos.

todolistdb=# delete from todos where completed_at is NOT NULL;
DELETE 2
todolistdb=# select * from todos;


 id |       name        |   details   | priority |         created_at         | completed_at
----+-------------------+-------------+----------+----------------------------+--------------
 14 | Mach meines Bett  | mit lacheln |        2 | 2017-08-28 15:53:29.222159 |
 15 | Laufen um bischen | mit lacheln |        3 | 2017-08-28 15:53:53.810539 |
 16 | Iss gemusen       | mit lacheln |        4 | 2017-08-28 15:53:53.814362 |
(3 rows)
