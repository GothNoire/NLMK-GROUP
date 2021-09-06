CREATE TABLE emplyees (tab_number INTEGER NOT NULL, surname VARCHAR2(250 CHAR), first_name VARCHAR2(250 CHAR), date_birthday DATE, salary NUMBER (5,2),
id_department INTEGER, id_post_emp INTEGER,
CONSTRAINTS pk_tab_number PRIMARY KEY (tab_number));

CREATE TABLE Post_emp (id INTEGER NOT NULL, name_post VARCHAR2(250 CHAR),
CONSTRAINTS pk_id_post_emp PRIMARY KEY (id));

CREATE TABLE departments (id INTEGER NOT NULL, name_department VARCHAR2(250 CHAR),
CONSTRAINTS pk_id_departments PRIMARY KEY (id));

ALTER TABLE emplyees 
ADD CONSTRAINTS fk_id_departments FOREIGN KEY (id_department)
REFERENCES departments (id);

ALTER TABLE emplyees 
ADD CONSTRAINTS fk_Post FOREIGN KEY (id_post_emp)
REFERENCES post_emp (id);

ALTER TABLE emplyees
ADD last_name VARCHAR2(250 CHAR);

ALTER TABLE emplyees
MODIFY salary NUMBER (9,2);
