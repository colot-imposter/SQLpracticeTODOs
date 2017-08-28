CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL);


  -- Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (name, details, priority, created_at, completed_at) VALUES ('brosse mes dents', 'toute les dents', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO todos (name, details, priority, created_at) VALUES ('Mach meines Bett', 'mit lacheln', '2', CURRENT_TIMESTAMP);

INSERT INTO todos (name, details, priority, created_at) VALUES ('Laufen um bischen', 'mit lacheln', '3', CURRENT_TIMESTAMP);
INSERT INTO todos (name, details, priority, created_at) VALUES ('Iss gemusen', 'mit lacheln', '4', CURRENT_TIMESTAMP) ;
INSERT INTO todos (name, details, priority, created_at) VALUES ('Schlag ein Nazi', 'mit lacheln', '5', CURRENT_TIMESTAMP);

  -- Write a SELECT statement to find all incomplete todos.

  


  -- Write a SELECT statement to find all todos with a priority above 1.


  -- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.


  -- Write a DELETE statement to delete all completed todos.
