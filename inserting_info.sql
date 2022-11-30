-- Concession product 
INSERT INTO customer ("first_name", "last_name")
VALUES 
	('Hayden', 'Lynch'),
	('Cole', 'Reid'),
	('Philip', 'Dorset'),
	('Adam', 'Johnson');

INSERT INTO concession_product ("name", price, description)
VALUES 
	('Popcorn', 5.99, 'butter or salt'),
	('drink', 3.99, 'soda or water');

INSERT INTO concession (customer_id, concession_product_id, date_of_sale, quantity)
VALUES 
	(1, 1, '2022-11-30', 3),
	(3, 2, '2022-12-01', 2);

INSERT INTO movie (run_time)
VALUES 
	('12:00:00'),
	('14:00:00'),
	('16:00:00');

INSERT INTO theatre_room (capcity)
VALUES 
	(100),
	(75),
	(50);

INSERT INTO seating (theatre_room_id)
VALUES 
	(1),
	(2),
	(3);

INSERT INTO	movie_theatre (movie_id, theatre_room_id, "location")
VALUES 
	(2, 1, 'Indianapolis'),
	(3, 2, 'Indianapolis'),
	(1, 3, 'Chicago');

INSERT INTO ticket (customer_id, movie_id, theatre_room_id, date_purchased, event_date)
VALUES 
	(4, 2, 2, '2022-11-15', '2022-11-30'),
	(2, 1, 3, '2022-11-26', '2022-12-02'),
	(1, 3, 1, '2022-11-30', '2022-12-25');
	