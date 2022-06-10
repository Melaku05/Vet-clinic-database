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

/* Create owners table */
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INT
);

/* Create species table */
CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

/* Remove species column */
ALTER TABLE animals DROP COLUMN species;

/* Add species_id in animals table referenced from species table */
ALTER TABLE animals
ADD COLUMN species_id INT REFERENCES species (id);
ADD COLUMN owner_id INT REFERENCES species (id);