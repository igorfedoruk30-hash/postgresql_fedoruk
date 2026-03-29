-- 1. Вывести все записи в порядке возрастания id, начиная с 7
SELECT *
FROM schema_14
WHERE id >= 7

-- 2. Вывести имя и фамилию записей, у которых имя длиннее 7 букв
SELECT first_name, last_name
FROM schema_14
WHERE LENGTH(first_name) > 7;

-- 3. Вывести все записи, отсортированные сначала по фамилии, затем по имени
SELECT *
FROM schema_14
ORDER BY last_name ASC, first_name ASC;

-- 4. Вывести все данные с id >= 7, отсортировать по убыванию id, затем по имени
SELECT *
FROM schema_14
WHERE id >= 7
ORDER BY id DESC, first_name ASC;

-- 5. Вывести все данные с id > 10 и с отчеством Петрович
SELECT *
FROM schema_14
WHERE id > 10
AND middle_name = 'Петрович';

-- 6. Вывести все данные с именем Иван и отчеством Петрович
SELECT *
FROM schema_14
WHERE first_name = 'Иван'
AND middle_name = 'Петрович';

-- 7. Вывести все данные с отчеством Петрович и Иванович
SELECT *
FROM schema_14
WHERE middle_name IN ('Петрович', 'Иванович');

-- 8. Вывести все данные с отчеством Петрович и Иванович и с id > 5
SELECT *
FROM schema_14
WHERE middle_name IN ('Петрович', 'Иванович')
AND id > 5;

-- 9. Вывести все данные с id от 10 до 15 включительно
SELECT *
FROM schema_14
WHERE id BETWEEN 10 AND 15;

-- 10. Вывести имена и фамилии 5 пользователей после первой пятерки при сортировке по фамилии
SELECT first_name, last_name
FROM schema_14
ORDER BY last_name ASC
LIMIT 5 OFFSET 5;

--4 практическая

-- 1
SELECT *
FROM schema_14
WHERE birth_date > '2005-01-01';

-- 2
SELECT first_name, last_name, birth_date
FROM schema_14
ORDER BY birth_date DESC;

-- 3
SELECT *
FROM schema_14
WHERE birth_date BETWEEN '2003-01-01' AND '2008-12-31';

-- 4
SELECT *
FROM schema_14
WHERE EXTRACT(YEAR FROM birth_date) = 2007
ORDER BY last_name;

-- 5
SELECT
    first_name,
    last_name,
    TO_CHAR(birth_date, 'DD.MM.YYYY') AS birthday
FROM schema_14
WHERE EXTRACT(YEAR FROM birth_date) = 2007
ORDER BY birth_date;

-- 6
SELECT *
FROM schema_14
WHERE birth_date::time BETWEEN '12:00:00' AND '12:59:59'
ORDER BY birth_date DESC;

-- 8
SELECT *
FROM schema_14
WHERE age(birth_date) >= INTERVAL '18 years';

-- 9
SELECT *
FROM schema_14
WHERE EXTRACT(DOW FROM birth_date) IN (0,6)
ORDER BY birth_date DESC;

-- Выбор пользователей без оплаты
SELECT first_name, last_name
FROM schema_14
WHERE payment IS NULL
ORDER BY last_name, first_name;
