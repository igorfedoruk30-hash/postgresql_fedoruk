-- =========================
-- Таблица role
-- =========================
INSERT INTO role (name) VALUES
('administrator'),
('editor'),
('user');

-- =========================
-- Таблица permission
-- =========================
INSERT INTO permission (name) VALUES
('create'),
('edit'),
('view'),
('delete');

-- =========================
-- Таблица role_permission
-- =========================
-- user
INSERT INTO role_permission (role_name, permission_name) VALUES
('user', 'view');

-- editor
INSERT INTO role_permission (role_name, permission_name) VALUES
('editor', 'view'),
('editor', 'edit');

-- administrator
INSERT INTO role_permission (role_name, permission_name) VALUES
('administrator', 'create'),
('administrator', 'edit'),
('administrator', 'view'),
('administrator', 'delete');

-- =========================
-- Новые пользователи (10 записей)
-- =========================
INSERT INTO schema_14 (
id, e_mail, first_name, last_name, middle_name, birth_date, phone, role_name, login, password
) VALUES
(25, '[ivanov@my.example.com](mailto:ivanov@my.example.com)', 'Иван', 'Иванов', 'Сергеевич', '2005-06-15 10:20:00', '89001234567', 'user', 'ivanov25', 'pass25'),
(26, '[petrova@my.example.com](mailto:petrova@my.example.com)', 'Анна', 'Петрова', 'Игоревна', '2006-03-11 14:10:00', '89011234567', 'user', 'petrova26', 'pass26'),
(27, '[sidorov@my.example.com](mailto:sidorov@my.example.com)', 'Павел', 'Сидоров', 'Алексеевич', '2004-12-01 09:00:00', '89021234567', 'editor', 'sidorov27', 'pass27'),
(28, '[morozova@my.example.com](mailto:morozova@my.example.com)', 'Ольга', 'Морозова', 'Викторовна', '2007-07-22 16:45:00', '89031234567', 'user', 'morozova28', 'pass28'),
(29, '[kozlov@my.example.com](mailto:kozlov@my.example.com)', 'Дмитрий', 'Козлов', 'Андреевич', '2003-05-19 11:30:00', '89041234567', 'editor', 'kozlov29', 'pass29'),
(30, '[nikitina@my.example.com](mailto:nikitina@my.example.com)', 'Елена', 'Никитина', 'Сергеевна', '2008-01-10 08:15:00', '89051234567', 'user', 'nikitina30', 'pass30'),
(31, '[volkova@my.example.com](mailto:volkova@my.example.com)', 'Мария', 'Волкова', 'Дмитриевна', '2005-09-05 13:50:00', '89061234567', 'user', 'volkova31', 'pass31'),
(32, '[egorov@my.example.com](mailto:egorov@my.example.com)', 'Артём', 'Егоров', 'Павлович', '2006-11-30 17:25:00', '89071234567', 'editor', 'egorov32', 'pass32'),
(33, '[smirnova@my.example.com](mailto:smirnova@my.example.com)', 'Наталья', 'Смирнова', 'Олеговна', '2004-04-18 12:40:00', '89081234567', 'user', 'smirnova33', 'pass33'),
(34, '[fedorov@my.example.com](mailto:fedorov@my.example.com)', 'Алексей', 'Фёдоров', 'Ильич', '2003-08-27 19:10:00', '89091234567', 'administrator', 'fedorov34', 'pass34');
