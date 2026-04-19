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
(34, '[fedoruv@my.example.com](mailto:fedorov@my.example.com)', 'Алексей', 'Фёдоров', 'Ильич', '2003-08-27 19:10:00', '89091234567', 'administrator', 'fedorov34', 'pass34');

-- =========================
-- permission
-- =========================
INSERT INTO permission (name) VALUES
('create'),
('edit'),
('view'),
('delete');

-- =========================
-- role_permission
-- =========================
INSERT INTO role_permission VALUES
('user', 'view'),
('editor', 'view'),
('editor', 'edit'),
('administrator', 'create'),
('administrator', 'edit'),
('administrator', 'view'),
('administrator', 'delete');

-- =========================
-- department
-- =========================
INSERT INTO department (name) VALUES
('Кафедра информатики'),
('Кафедра математики'),
('Деканат ИТ'),
('Кафедра физики'),
('Кафедра экономики');

-- =========================
-- position
-- =========================
INSERT INTO position (name) VALUES
('администрация'),
('преподаватель'),
('студент');

-- =========================
-- groups
-- =========================
INSERT INTO groups (name) VALUES
('ИВТ-101'),
('ИВТ-102'),
('ПМИ-101'),
('ПМИ-102'),
('ЭКО-101');

-- =========================
-- пользователи (10)
-- =========================
INSERT INTO schema_14 (
id, e_mail, first_name, last_name, middle_name, birth_date, phone, role_name, login, password
) VALUES
(35, '[sergeev.ia@university.ru](mailto:sergeev.ia@university.ru)', 'Илья', 'Сергеев', 'Андреевич', '2006-05-10', '89100000001', 'user', 'sergeev35', 'pass35'),
(36, '[kireev.oi@university.ru](mailto:kireev.oi@university.ru)', 'Олег', 'Киреев', 'Игоревич', '2005-02-11', '89100000002', 'user', 'kireev36', 'pass36'),
(37, '[lukina.ms@university.ru](mailto:lukina.ms@university.ru)', 'Марина', 'Лукина', 'Сергеевна', '2006-07-21', '89100000003', 'user', 'lukina37', 'pass37'),
(38, '[grachev.ap@university.ru](mailto:grachev.ap@university.ru)', 'Антон', 'Грачев', 'Павлович', '2005-03-30', '89100000004', 'user', 'grachev38', 'pass38'),
(39, '[fomina.ea@university.ru](mailto:fomina.ea@university.ru)', 'Елена', 'Фомина', 'Алексеевна', '2006-09-12', '89100000005', 'user', 'fomina39', 'pass39'),
(40, '[orlov.si@university.ru](mailto:orlov.si@university.ru)', 'Сергей', 'Орлов', 'Иванович', '1990-01-01', '89100000006', 'editor', 'orlov40', 'pass40'),
(41, '[belova.ip@university.ru](mailto:belova.ip@university.ru)', 'Ирина', 'Белова', 'Петровна', '1988-06-06', '89100000007', 'editor', 'belova41', 'pass41'),
(42, '[sokolov.ai@university.ru](mailto:sokolov.ai@university.ru)', 'Андрей', 'Соколов', 'Игоревич', '1992-04-04', '89100000008', 'editor', 'sokolov42', 'pass42'),
(43, '[vlasova.od@university.ru](mailto:vlasova.od@university.ru)', 'Ольга', 'Власова', 'Дмитриевна', '1985-12-12', '89100000009', 'administrator', 'vlasova43', 'pass43'),
(44, '[titov.ma@university.ru](mailto:titov.ma@university.ru)', 'Максим', 'Титов', 'Алексеевич', '1987-03-03', '89100000010', 'administrator', 'titov44', 'pass44');

-- =========================
-- university_member
-- =========================
INSERT INTO university_member (user_id, position_name, department_id) VALUES
(35, 'студент', 1),
(36, 'студент', 1),
(37, 'студент', 2),
(38, 'студент', 2),
(39, 'студент', 3),
(40, 'преподаватель', 1),
(41, 'преподаватель', 2),
(42, 'преподаватель', 3),
(43, 'администрация', 3),
(44, 'администрация', 4);

-- =========================
-- группы (после проверки id)
-- =========================
INSERT INTO group_member (group_id, member_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

