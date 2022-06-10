/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';
SELECT name from animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-12-27';
SELECT name from animals WHERE neutered=True AND escape_attempts > 3;
SELECT date_of_birth from animals WHERE name="Agumon" or name="Pikachu";
SELECT name,escape_attempts from animals WHERE weight_kg >10.5;
SELECT * from animals  WHERE  neutered=TRUE;
SELECT * from animals WHERE NOT name='Gabumon';
SELECT * from animals WHERE weight_kg >= 10 AND weight_kg<=17;

BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name like '%mon%';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-1-1';
SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(name) from animals;
SELECT COUNT(name) from animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) from animals;
SELECT neutered, MAX(escape_attempts) from animals GROUP BY neutered;
SELECT species, MAX(weight_kg), MIN(weight_kg) from animals GROUP BY species;
SELECT species, AVG(escape_attempts) from animals WHERE date_of_birth BETWEEN '1990-1-1' AND '2000-12-27' GROUP BY species;