-- переименование поля email
ALTER TABLE schema_14
RENAME COLUMN email TO e_mail;

-- сделать поле обязательным
ALTER TABLE schema_14
ALTER COLUMN e_mail SET NOT NULL;

-- добавить уникальность
ALTER TABLE schema_14
ADD CONSTRAINT schema_14_email_unique UNIQUE (e_mail);

-- добавить поле birth_date
ALTER TABLE schema_14
ADD COLUMN birth_date TIMESTAMP;

-- заполнить поле birth_date
UPDATE schema_14 SET birth_date = '2006-01-12 10:15:00' WHERE id = 1;
UPDATE schema_14 SET birth_date = '2007-03-18 12:25:00' WHERE id = 2;
UPDATE schema_14 SET birth_date = '2005-07-21 14:10:00' WHERE id = 3;
UPDATE schema_14 SET birth_date = '2004-02-11 09:45:00' WHERE id = 4;
UPDATE schema_14 SET birth_date = '2008-06-30 11:30:00' WHERE id = 5;
UPDATE schema_14 SET birth_date = '2003-09-14 13:05:00' WHERE id = 6;
UPDATE schema_14 SET birth_date = '2007-12-01 12:40:00' WHERE id = 7;
UPDATE schema_14 SET birth_date = '2006-04-19 16:20:00' WHERE id = 8;
UPDATE schema_14 SET birth_date = '2005-08-22 12:10:00' WHERE id = 9;
UPDATE schema_14 SET birth_date = '2004-11-03 15:55:00' WHERE id = 10;
UPDATE schema_14 SET birth_date = '2007-05-17 08:35:00' WHERE id = 11;
UPDATE schema_14 SET birth_date = '2006-10-09 12:59:59' WHERE id = 12;
UPDATE schema_14 SET birth_date = '2003-03-25 07:50:00' WHERE id = 13;
UPDATE schema_14 SET birth_date = '2008-01-13 18:10:00' WHERE id = 14;
UPDATE schema_14 SET birth_date = '2007-09-07 12:05:00' WHERE id = 15;
UPDATE schema_14 SET birth_date = '2006-12-29 21:40:00' WHERE id = 16;
UPDATE schema_14 SET birth_date = '2005-06-16 11:11:00' WHERE id = 17;
UPDATE schema_14 SET birth_date = '2004-07-27 13:30:00' WHERE id = 18;
UPDATE schema_14 SET birth_date = '2007-02-14 12:20:00' WHERE id = 19;
UPDATE schema_14 SET birth_date = '2003-10-05 14:55:00' WHERE id = 20;
UPDATE schema_14 SET birth_date = '2006-03-08 19:00:00' WHERE id = 21;
UPDATE schema_14 SET birth_date = '2008-04-12 06:25:00' WHERE id = 22;
UPDATE schema_14 SET birth_date = '2005-09-19 12:45:00' WHERE id = 23;
UPDATE schema_14 SET birth_date = '2007-11-23 17:15:00' WHERE id = 24;

-- сделать поле обязательным после заполнения
ALTER TABLE schema_14
ALTER COLUMN birth_date SET NOT NULL;

-- перенести время рождения на 1 час вперед после 13:00
UPDATE schema_14
SET birth_date = birth_date + INTERVAL '1 hour'
WHERE birth_date::time >= '13:00:00';