CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(50),
  email VARCHAR,
  address VARCHAR(50),
  phone VARCHAR(20)
);

CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(50),
  duration_minutes VARCHAR(10),
  genre VARCHAR(20)
);

CREATE TABLE Ticket (
  ticket_id SERIAL PRIMARY KEY,
  movie_id INT,
  concession_id INT,
  customer_id INT,
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE Concession (
  concession_id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  price DECIMAL(8,2),
  category VARCHAR(20)
);

ALTER TABLE Movie
ALTER duration_minutes TYPE INTEGER using (duration_minutes::INTEGER)

INSERT INTO customer(
    customer_name,
    email,
    address,
    phone
) VALUES (
    'Brian',
    'brian@ct.com',
    '123 main st',
    '4088336544'
),
(
    'Tony',
    'tony@ct.com',
    '125 main st',
    '4032336544' 
)

INSERT INTO Movie(
    movie_name,
    duration_minutes,
    genre
) VALUES (
    'Iron man 1',
    120,
    'Super-hero'
),
(
    'LalaLand',
    110,
    'Musical'
)

INSERT into Concession(
    name,
    price,
    category
) VALUES(
    'coke',
    5,
    'drink'
),
(
    'popcorn',
    10,
    'food'
),
(
    'hot dog',
    6,
    'food'
)

INSERT INTO Ticket(
    movie_id,
    concession_id,
    customer_id
) VALUES (
    1,
    2,
    1
),
(
    2,
    3,
    1
)