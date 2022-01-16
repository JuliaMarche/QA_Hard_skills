/*Таблица employees
1)Создать таблицу employees
-id. serial,  primary key,
-employee_name. Varchar(50), not null
2)Наполнить таблицу employee 70 строками*/

create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values 
('Анна'),
('Елена'),
('Надежда'),
('Валерий'),
('Игорь'),
('Ян'),
('Юлия'),
('Дмитрий'),
('Владимир'),
('Ольга'),
('Екатерина'),
('Евгения'),
('Евгений'),
('Шерлок'),
('Константин'),
('Генадий'),
('Артем'),
('Митя'),
('Шелдон'),
('Питер'),
('Зоя'),
('Николай'),
('Алина'),
('Александр'),
('Игорь'),
('Тоня'),
('Юнона'),
('Алексей'),
('Светлана'),
('Дарья'),
('Петр'),
('Жозефина'),
('Илья'),
('Егор'),
('Сергей'),
('Степан'),
('Эмиль'),
('Никита'),
('Антон'),
('Лев'),
('Юрий'),
('Олег'),
('Фома'),
('Ульяна'),
('Рик'),
('Морти'),
('Галина'),
('Максим'),
('Роман'),
('Влада'),
('Алисия'),
('Бильбо'),
('Любава'),
('Милослав '),
('Арсений'),
('Нина'),
('Руслана'),
('Руслан'),
('Зоря'),
('Августин'),
('Казимир'),
('Брюс'),
('Яна'),
('Анастасия'),
('Зинаида'),
('Радим'),
('Мирослава'),
('Радибор'),
('Раиса'),
('Алиса');

/*Таблица salary
3)Создать таблицу salary
-id. Serial  primary key,
-monthly_salary. Int, not null
4)Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500*/

create table salary(
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values
('1000'),
('1100'),
('1200'),
('1300'),
('1400'),
('1500'),
('1600'),
('1700'),
('1800'),
('1900'),
('2000'),
('2100'),
('2200'),
('2300'),
('2400'),
('2500');

/*Таблица employee_salary
5)Создать таблицу employee_salary
-id. Serial  primary key,
-employee_id. Int, not null, unique
-salary_id. Int, not null
6)Наполнить таблицу employee_salary 40 строками:
-в 10 строк из 40 вставить несуществующие employee_id
id	employee_id	salary_id
1	3	7
2	1	4
3	5	9
4	40	13
5	23	4
6	11	2
7	52	10
8	15	13
9	26	4
10	16	1
11	33	7
...	...	...*/

create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values 
('3', '7'),
('1', '4'),
('5', '9'),
('40', '13'),
('23', '4'),
('11', '2'),
('52', '10'),
('15', '13'),
('26', '4'),
('16', '1'),
('33', '7'),
('46', '14'),
('66', '4'),
('8', '9'),
('14', '13'),
('59', '4'),
('69', '2'),
('43', '10'),
('30', '13'),
('39', '4'),
('57', '15'),
('44', '11'),
('31', '9'),
('35', '8'),
('48', '4'),
('24', '5'),
('7', '10'),
('63', '13'),
('50', '4'),
('55', '1'),
('120', '15'),
('94', '11'),
('89', '9'),
('132', '8'),
('125', '4'),
('86', '4'),
('146', '5'),
('87', '9'),
('100', '14'),
('98', '3');


/*Таблица roles
7)Создать таблицу roles
-id. Serial  primary key,
-role_name. int, not null, unique
8)Поменять тип столба role_name с int на varchar(30)
9)Наполнить таблицу roles 20 строками:
id	role_name
1	Junior Python developer
2	Middle Python developer
3	Senior Python developer
4	Junior Java developer
5	Middle Java developer
6	Senior Java developer
7	Junior JavaScript developer
8	Middle JavaScript developer
9	Senior JavaScript developer
10	Junior Manual QA engineer
11	Middle Manual QA engineer
12	Senior Manual QA engineer
13	Project Manager
14	Designer
15	HR
16	CEO
17	Sales manager
18	Junior Automation QA engineer
19	Middle Automation QA engineer
20	Senior Automation QA engineer*/

create table roles(
id serial primary key,
role_name int unique not null
);

alter table roles alter column role_name type varchar(30);

insert into roles(role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

/*Таблица roles_employee
10)Создать таблицу roles_employee
-id. Serial  primary key,
-employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11)Наполнить таблицу roles_employee 40 строками:
id	employee_id	role_id
1	7	2
2	20	4
3	3	9
4	5	13
5	23	4
6	11	2
7	10	9
8	22	13
9	21	3
10	34	4
11	6	7
...	...	...*/

create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null
);

insert into roles_employee(employee_id, role_id)
values 
('7', '2'),
('20', '4'),
('3', '9'),
('5', '13'),
('23', '4'),
('11', '2'),
('10', '9'),
('22', '13'),
('21', '3'),
('34', '4'),
('6', '7'),
('46', '14'),
('66', '4'),
('8', '9'),
('14', '13'),
('59', '5'),
('69', '2'),
('43', '10'),
('30', '13'),
('39', '17'),
('57', '15'),
('44', '11'),
('31', '19'),
('35', '8'),
('48', '4'),
('24', '13'),
('27', '10'),
('63', '13'),
('50', '4'),
('55', '16'),
('49', '15'),
('13', '11'),
('70', '16'),
('18', '8'),
('19', '18'),
('45', '4'),
('41', '7'),
('67', '9'),
('53', '15'),
('64', '20')