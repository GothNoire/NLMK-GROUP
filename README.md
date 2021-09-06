# NLMK-GROUP
interview tz
1
Установить Oracle XE (версия бесплатная даже для коммерческого использования)

2 Создать базу данных (набор таблиц), которая будет содержать следующую информацию:
- код и название отдела;
- табельный номер сотрудника;
- ФИО сотрудника (фамилия, имя и отчество должны храниться в отдельных столбцах, а не в одном);
- должность;
- дата рождения;
- заработная плата.

3 Написать процедуру, которая увеличит зарплату на 5 % тем, у кого она меньше 15000, и на 3 % – у
кого больше 15000

4 Написать процедуру, которая найдет сумму зарплат по всем отделам и выведет ее через системную
процедуру dbms_output.put_line.

5 Написать функцию, которая последовательно вызовет процедуру увеличения зарплаты, затем
вызовет функцию подсчета суммы зарплат по всем отделам и вернуть результат.

6 Для таблицы «Сотрудник» создать триггер, который при вставке или изменении строк данных будет
выполнять проверку: величина заработной платы должны быть кратна 100, то есть делиться на 100
без остатка. В случае, если величина заработной платы не кратна 100, выдавать сообщение об
ошибке.

7 Написать функцию, которая будет находить фамилию сотрудника по табельному номеру. Если в
таблице данных нет сотрудника с данным табельным номером, то обрабатывать исключение
NO_DATA_FOUND. В обработчике исключений делать return null.

8 Написать отдельный запрос на выборку данных (оператор select). Запрос должен возвращать
названия отделов большими буквами (1-й столбец) и ФИО в виде одной строки (2-й столбец,
использовать функцию конкатенации). Результат отсортировать сначала по 1-му столбцу, затем по 2-
му столбцу в порядке возрастания.

Процедуры и функции создавать в одном пакете.
