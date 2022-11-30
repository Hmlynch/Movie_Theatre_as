-- Customer Table
CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT NULL
);

CREATE TABLE concession_product (
	concession_product_id serial PRIMARY KEY,
	"name" varchar(45) NOT NULL,
	price integer NOT NULL,
	description varchar(255)
);

CREATE TABLE concession (
	concession_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id),
	concession_product_id integer REFERENCES concession_product(concession_product_id),
	date_of_sale date NOT NULL,
	quantity integer NOT NULL
);

CREATE TABLE movie (
	movie_id serial PRIMARY KEY,
	run_time time NOT NULL
);

CREATE TABLE theatre_room (
	theatre_room_id serial PRIMARY KEY,
	capcity integer NOT NULL
);

CREATE TABLE seating (
	seating_id serial PRIMARY KEY,
	theatre_room_id integer REFERENCES theatre_room(theatre_room_id)
);

CREATE TABLE movie_theatre (
	movie_theatre_id serial PRIMARY KEY, 
	movie_id integer REFERENCES movie(movie_id),
	theatre_room_id integer REFERENCES theatre_room(theatre_room_id),
	"location" varchar(255)
);

ADD 

CREATE TABLE ticket (
	ticket_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id),
	movie_id integer REFERENCES movie(movie_id),
	theatre_room_id integer REFERENCES theatre_room(theatre_room_id),
	date_purchased date NOT NULL,
	event_date date NOT NULL
);