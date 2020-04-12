-- Chelsea Smith
USE scratch_DB; --Chelsea Smith

GO

IF OBJECT_ID ('pets') IS NOT NULL
DROP TABLE pets;

IF OBJECT_ID ('owners') IS NOT NULL
DROP TABLE owners;

GO

CREATE TABLE owners (
o_name VARCHAR(24),
o_street VARCHAR(16),
o_city VARCHAR(16),
o_zipcode CHAR(5),
o_phonenumber VARCHAR(10)

CONSTRAINT owners_PK PRIMARY KEY (o_phonenumber),
CONSTRAINT NULL_o_name CHECK (o_name is NOT NULL)

);

GO

------------------------

CREATE TABLE pets (
p_id CHAR(4),
p_name VARCHAR(24),
p_vac DATETIME,
o_phonenumber VARCHAR(10)

CONSTRAINT pets_PK PRIMARY KEY (p_id),
CONSTRAINT owners_pets_FK FOREIGN KEY (o_phonenumber) REFERENCES owners(o_phonenumber) 

);
