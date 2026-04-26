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

-- Практическая 6:

-- 1. Пользователи с фамилией на "Р", сортировка по фамилии и имени
SELECT *
FROM schema_14
WHERE last_name LIKE 'Р%'
ORDER BY last_name, first_name;

-- 2. Пользователи с почтой mail.ru
SELECT first_name, last_name
FROM schema_14
WHERE e_mail LIKE '%@mail.ru'
ORDER BY last_name, first_name;

-- 3. Имя из 4 букв
SELECT first_name, last_name
FROM schema_14
WHERE CHAR_LENGTH(first_name) = 4
ORDER BY last_name, first_name;

-- 4. Совершеннолетние, номер заканчивается на 00
SELECT *
FROM schema_14
WHERE DATE_PART('year', AGE(birth_date)) >= 18
  AND phone LIKE '%00'
ORDER BY birth_date;

-- 5. Оплата вне интервала [-100000, 100000]
SELECT *
FROM schema_14
WHERE ABS(payment) > 100000
ORDER BY payment;

-- 6. Знак оплаты
SELECT first_name,
       last_name,
       SIGN(payment) AS sign_payment
FROM schema_14
ORDER BY sign_payment;

-- 7. Каждый третий пользователь (id кратны 3)
SELECT id, email
FROM schema_14
WHERE MOD(id, 3) = 0;

-- 8. Количество пользователей до 20 лет
SELECT COUNT(*) AS user20
FROM schema_14
WHERE DATE_PART('year', AGE(birth_date)) < 20;

-- 9. Общая задолженность (отрицательные оплаты)
SELECT SUM(payment) AS minus
FROM schema_14
WHERE payment < 0;

-- 10. Средняя положительная оплата
SELECT AVG(payment) AS avg_positive_payment
FROM schema_14
WHERE payment > 0;

-- 11. Пользователь с максимальной оплатой
SELECT *
FROM schema_14
ORDER BY payment DESC
LIMIT 1;

--практическая 9

--пользователи с правами view и edit

select distinct first_name, middle_name, last_name
from schema_14
where role_name in (
    select role_name
    from role_permission
    where permission_name in ('view', 'edit')
    group by role_name
    having count(distinct permission_name) = 2
);

--пользователи с правами view или edit

select distinct first_name, middle_name, last_name
from schema_14
where role_name in (
    select role_name
    from role_permission
    where permission_name in ('view', 'edit')
);

--Группы 1 курса

select *
from groups
where course = 1;
