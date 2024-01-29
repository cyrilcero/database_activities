CREATE TABLE lessons (
	id 				integer 						PRIMARY KEY,
	name 			character varying(100) 			NOT NULL,
	description 	text,
	front_end 		boolean 						DEFAULT false,
	backend 		boolean 						DEFAULT false,
	price 			numeric(8,2) 					DEFAULT 0.0,
	created_at 		timestamp without time zone 	NOT NULL,
	updated_at 		timestamp without time zone 	NOT NULL
);


-- DROP TABLE lessons; -- DELETES THE TABLE

SELECT * FROM lessons;

TRUNCATE TABLE lessons; --CLEARS THE TABLE

INSERT INTO lessons (id, name, description, price, created_at, updated_at, back_end)

VALUES (1, "Ruby", "Ruby is awesome", 199.99, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true) -- user can insert up to 1000 lines

UPDATE lessons 
SET price = 299.99 
WHERE id = 1; -- target, ID=1 then change the price to 299.99


DELETE FROM lessons; -- deletes all parang truncate

DELETE FROM lessons WHERE id = 1; -- specific deletion