-- Create a keyspace
CREATE KEYSPACE IF NOT EXISTS store WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '2' };
ALTER KEYSPACE IF EXISTS store WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '2' };

-- Create a table
CREATE TABLE IF NOT EXISTS store.shopping_cart (
userid text PRIMARY KEY,
item_count int,
last_update_timestamp timestamp
);

CREATE TABLE IF NOT EXISTS store.Users (Id int PRIMARY KEY,Name varchar,Cpf varchar,BirthDate date,email varchar);

-- Insert some data
INSERT INTO store.shopping_cart(userid, item_count, last_update_timestamp)VALUES ('9876', 2, toTimeStamp(now()));
INSERT INTO store.shopping_cart(userid, item_count, last_update_timestamp) VALUES ('1234', 5, toTimeStamp(now()));

INSERT INTO  store.Users (Name ,Cpf ,BirthDate ,email ) VALUES ('Teste Teste','12345678901', toDate(now()),'teste@gmail.com');
INSERT INTO  store.Users (Name ,Cpf ,BirthDate ,email ) VALUES ('Teste Novo','12345678901', toDate(now()),'teste@gmail.com');
