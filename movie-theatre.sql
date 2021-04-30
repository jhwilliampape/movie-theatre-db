--Customers Table
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150),
	billing_info VARCHAR(150)
);

--Inventory Table
CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER
);

--Movies Table
CREATE TABLE movies(
	film_id SERIAL PRIMARY KEY,
	production_company VARCHAR(100),
	address VARCHAR(150),
	phn_number VARCHAR(15),
);	

--Consessions Table
CREATE TABLE consessions(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(3,2),
	product_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	upc INTEGER
	FOREIGN KEY(consessions) REFERENCES inventory(consessions)
);

--Tickets Table
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	theatre VARCHAR(100),
	film_id INTEGER NOT NULL,
	amount NUMERIC(3,2),
	FOREIGN KEY(film_id) REFERENCES movies(film_id)
);

