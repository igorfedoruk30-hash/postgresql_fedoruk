CREATE TABLE schema_14 (
id bigserial not null,
email varchar(64) not null,
first_name varchar(64) not null,
last_name varchar(64) not null,
middle_name varchar(64) not null
);

CREATE TABLE address (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES schema_14(id),
    zip_code VARCHAR(10),
    city VARCHAR(100),
    street VARCHAR(100),
    building VARCHAR(10),
    flat VARCHAR(10)
);
