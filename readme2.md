//Write INSERT statements to insert 20 todos into the todos table, with a combination of //priorities, created times, and completed times, with not all having a completed time.

INSERT INTO todos (name, details, priority, created_at) VALUES('Swimmen aufs fluss', 'mit lacheln', 5, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES('Teile meines Geheimnisse', 'mit lacheln', 6, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES('Find einen Nazi', 'mit keine lacheln', 6, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES('Sprechen mit den Nazi', 'mit keine lacheln', 6, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES('Stand naehe den Nazi', 'mit keine lacheln', 6, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES('SCHLAG den Nazi', 'mit lacheln', 6, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Computer lehrnen', 'mit lacheln', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Spiel fussball', 'mit lacheln', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Spiel Rugby', 'mit lacheln', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Tanzen als niemand sehen', 'mit lacheln', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Tanzen fuer viele Leuten', 'mit lacheln', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Tanz mit dem Wind', 'mit lacheln', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Tanz mit Wolfs, mit lacheln', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Tanz mit Hanz den Baeker', 'mit lacheln', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES('Tanz mit dem Toeffel', 'mit  keine lacheln', 7, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Spiel die Geige mit dem Toeffel', 'mit lacheln', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Kauf eine Geige', 'mit lacheln', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES('Win mehr', 'mit lacheln', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

id |              name               |      details       | priority |         created_at         |        completed_at
----+---------------------------------+--------------------+----------+----------------------------+----------------------------
14 | Mach meines Bett                | mit lacheln        |        2 | 2017-08-28 15:53:29.222159 |
15 | Laufen um bischen               | mit lacheln        |        3 | 2017-08-28 15:53:53.810539 |
16 | Iss gemusen                     | mit lacheln        |        4 | 2017-08-28 15:53:53.814362 |
18 | Swimmen aufs fluss              | mit lacheln        |        5 | 2017-08-29 11:22:06.595495 |
19 | Teile meines Geheimnisse        | mit lacheln        |        6 | 2017-08-29 11:22:06.600156 |
20 | Find einen Nazi                 | mit keine lacheln  |        6 | 2017-08-29 11:22:06.603501 |
21 | Sprechen mit den Nazi           | mit keine lacheln  |        6 | 2017-08-29 11:22:06.607299 |
22 | Stand naehe den Nazi            | mit keine lacheln  |        6 | 2017-08-29 11:22:06.610436 |
23 | SCHLAG den Nazi                 | mit lacheln        |        6 | 2017-08-29 11:22:06.613304 |
24 | Computer lehrnen                | mit lacheln        |        6 | 2017-08-29 11:22:06.616592 | 2017-08-29 11:22:06.616592
25 | Spiel fussball                  | mit lacheln        |        9 | 2017-08-29 11:22:06.619375 | 2017-08-29 11:22:06.619375
26 | Spiel Rugby                     | mit lacheln        |        9 | 2017-08-29 11:22:06.621852 | 2017-08-29 11:22:06.621852
27 | Tanzen als niemand sehen        | mit lacheln        |        9 | 2017-08-29 11:22:06.624266 | 2017-08-29 11:22:06.624266
28 | Swimmen aufs fluss              | mit lacheln        |        5 | 2017-08-29 11:23:35.683848 |
29 | Teile meines Geheimnisse        | mit lacheln        |        6 | 2017-08-29 11:23:42.965965 |
30 | Find einen Nazi                 | mit keine lacheln  |        6 | 2017-08-29 11:23:42.969545 |
31 | Sprechen mit den Nazi           | mit keine lacheln  |        6 | 2017-08-29 11:23:43.829245 |
32 | Stand naehe den Nazi            | mit keine lacheln  |        6 | 2017-08-29 11:24:16.681997 |
33 | SCHLAG den Nazi                 | mit lacheln        |        6 | 2017-08-29 11:24:16.684926 |

//Write a SELECT statement to find all incomplete todos with priority 3.

todolistdb=# select * from todos where priority =3;

 id |       name        |   details   | priority |         created_at         | completed_at
----+-------------------+-------------+----------+----------------------------+--------------
 15 | Laufen um bischen | mit lacheln |        3 | 2017-08-28 15:53:53.810539 |
(1 row)

//Write a SELECT statement to find the number of incomplete todos by priority.

select count(priority) from todos where completed_at is NOT NULL order by priority

todolistdb=# select count(id) from todos where completed_at is NOT NULL;
 count
-------
    20

-------    

id |              name               |      details      | priority |         created_at         |        completed_at
----+---------------------------------+-------------------+----------+----------------------------+----------------------------
24 | Computer lehrnen                | mit lacheln       |        6 | 2017-08-29 11:22:06.616592 | 2017-08-29 11:22:06.616592
25 | Spiel fussball                  | mit lacheln       |        9 | 2017-08-29 11:22:06.619375 | 2017-08-29 11:22:06.619375
26 | Spiel Rugby                     | mit lacheln       |        9 | 2017-08-29 11:22:06.621852 | 2017-08-29 11:22:06.621852
27 | Tanzen als niemand sehen        | mit lacheln       |        9 | 2017-08-29 11:22:06.624266 | 2017-08-29 11:22:06.624266
34 | Computer lehrnen                | mit lacheln       |        6 | 2017-08-29 11:24:16.687476 | 2017-08-29 11:24:16.687476
35 | Spiel fussball                  | mit lacheln       |        9 | 2017-08-29 11:24:16.690181 | 2017-08-29 11:24:16.690181
36 | Spiel Rugby                     | mit lacheln       |        9 | 2017-08-29 11:24:16.693162 | 2017-08-29 11:24:16.693162
37 | Tanzen als niemand sehen        | mit lacheln       |        9 | 2017-08-29 11:24:16.696084 | 2017-08-29 11:24:16.696084
40 | Computer lehrnen                | mit lacheln       |        6 | 2017-08-29 11:25:11.504082 | 2017-08-29 11:25:11.504082
41 | Spiel fussball                  | mit lacheln       |        9 | 2017-08-29 11:25:11.50783  | 2017-08-29 11:25:11.50783
42 | Spiel Rugby                     | mit lacheln       |        9 | 2017-08-29 11:25:12.323287 | 2017-08-29 11:25:12.323287
43 | Tanzen als niemand sehen        | mit lacheln       |        9 | 2017-08-29 11:25:20.027486 | 2017-08-29 11:25:20.027486
44 | Tanzen fuer viele Leuten        | mit lacheln       |        9 | 2017-08-29 11:25:20.032065 | 2017-08-29 11:25:20.032065
45 | Tanz mit dem Wind               | mit lacheln       |        7 | 2017-08-29 11:25:20.035917 | 2017-08-29 11:25:20.035917
46 | Tanz mit Hanz den Baeker        | mit lacheln       |        7 | 2017-08-29 11:25:38.176338 | 2017-08-29 11:25:38.176338
48 | Spiel die Geige mit dem Toeffel | mit lacheln       |        7 | 2017-08-29 11:25:47.463411 | 2017-08-29 11:25:47.463411
49 | Kauf eine Geige                 | mit lacheln       |        8 | 2017-08-29 11:25:47.467595 | 2017-08-29 11:25:47.467595
50 | Win mehr                        | mit lacheln       |        8 | 2017-08-29 11:25:48.101002 | 2017-08-29 11:25:48.101002
51 | Flieg aufs Voegeln              | mit keine lacheln |       10 | 2017-08-29 11:25:57.262617 | 2017-08-29 11:25:57.262617
52 | Isst kein Fleisch               | mit lacheln       |       10 | 2017-08-29 11:25:58.138865 | 2017-08-29 11:25:58.138865
(20 rows)

//Write a SELECT statement to find the number of todos by priority created in the last 30 days.


todolistdb=# select count(priority) from todos where created_at <= CURRENT_TIMESTAMP -Interval'30';
 count
-------
    38


//Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.

select name, min(created_at) from todos where priority =10 group by name, details limit 1;

name        |            min
--------------------+----------------------------
Flieg aufs Voegeln | 2017-08-29 11:25:57.262617
(1 row)
