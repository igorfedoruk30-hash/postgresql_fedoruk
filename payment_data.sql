-- Добавление поля
ALTER TABLE schema_14
ADD COLUMN payment INTEGER;

-- Заполнение данных
UPDATE schema_14
SET payment = CASE
    WHEN id IN (1,2,3,4,5) THEN -10000 * id
    WHEN id % 2 = 0 THEN NULL
    ELSE (RANDOM() * 400000 - 200000)::INTEGER
END;

-- Увеличение оплаты < 50000 на 10%
UPDATE schema_14
SET payment = payment * 1.1
WHERE payment < 50000;

-- Заполнение NULL значений
UPDATE schema_14
SET payment = 0
WHERE payment IS NULL;

-- Увеличение 3 минимальных оплат на 5%
UPDATE schema_14
SET payment = payment * 1.05
WHERE id IN (
    SELECT id FROM schema_14
    ORDER BY payment ASC
    LIMIT 3
);

-- Уменьшение 5 максимальных оплат
UPDATE schema_14
SET payment = payment - 10000
WHERE id IN (
    SELECT id FROM schema_14
    ORDER BY payment DESC
    LIMIT 5
);

-- Увеличение оплаты для id 5 и 7
UPDATE schema_14
SET payment = payment + 30000
WHERE id IN (5, 7);

-- Удаление отрицательных оплат
DELETE FROM schema_14
WHERE payment < 0;

-- Создание пользователя старше 100 лет (если нет)
UPDATE schema_14
SET birth_date = '1900-01-01'
WHERE id = 1;

-- Удаление пользователей старше 100 лет
DELETE FROM schema_14
WHERE AGE(birth_date) > INTERVAL '100 years';

-- Создание пользователя с именем и фамилией на "А"
UPDATE schema_14
SET first_name = 'Алексей', last_name = 'Андреев'
WHERE id = 2;

-- Удаление пользователей на "А"
DELETE FROM schema_14
WHERE first_name LIKE 'А%' AND last_name LIKE 'А%';

-- Создание пользователя Иван с большой оплатой
UPDATE schema_14
SET first_name = 'Иван', payment = 160000
WHERE id = 3;

-- Удаление Иванов с оплатой > 150000
DELETE FROM schema_14
WHERE first_name = 'Иван' AND payment > 150000;