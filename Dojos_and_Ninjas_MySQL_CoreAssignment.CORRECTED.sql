
INSERT INTO dojos (name)  -- PART 1 is done 
VALUES('Dojo_Big_Mommas'), ('Dojo_Pull_up_Yo_Pants'), ('Dojo_Get_UP_and_Move_That_Body');
SELECT * FROM dojos;

DELETE FROM dojos -- PART 2 is done 
WHERE id < 10;

INSERT INTO ninjas (first_name, last_name, dojo_id, age) -- PART 4
VALUES ('Clara', 'Warmack', 10, 9), ('Madison', 'Warmack', 10, 9), ('Emma', 'Warmack', 10, 4);

SELECT * FROM ninjas;


INSERT INTO ninjas (first_name, last_name, dojo_id, age) -- PART 7
VALUES ('Johnny', 'Doe', 11, 20), ('Michael', 'Jackson', 11, 50), ('Zackary', 'Kiser', 11, 30);

INSERT INTO ninjas (first_name, last_name, dojo_id, age) -- PART 8
VALUES ('Sandra', 'Bullock', 12, 80), ('Dolly', 'Parton', 12, 100), ('Johnny', 'Cash', 12, 200);

-- Retrieve all the ninjas from the first dojo
SELECT * FROM ninjas
WHERE dojo_id = 10;

-- Retrieve all the ninjas from the last dojo
SELECT * FROM ninjas
WHERE dojo_id = 12;

--  Retrieve the last ninja's dojo
SELECT * FROM dojos
WHERE id = 12;

-- Use a JOIN to retrieve the ninja with id 6 as well as the data from its dojo. Be sure to do this in one query using a join statement.
SELECT * FROM dojos JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE ninjas.id = 6;

-- Use a JOIN to retrieve all the ninjas as well as that ninja's dojo, note, you will see repeated data on dojos as a dojo can have many ninjas!
SELECT *  FROM dojos JOIN ninjas ON dojos.id = ninjas.dojo_id;

