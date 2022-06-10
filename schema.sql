/* Database schema to keep the structure of entire database. */



CREATE TABLE animals (
    id BIGSERIAL NOT NULL,
    name VARCHAR,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    species VARCHAR,
    PRIMARY KEY(id)
   
);
  ALTER TABLE animals
ADD COLUMN species VARCHAR;
