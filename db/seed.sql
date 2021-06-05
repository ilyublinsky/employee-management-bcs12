USE employee_db;

INSERT INTO department (department_name)
VALUES ("Management"),
("Engineering"),
("Human Resources"),
("Design");

INSERT INTO role (title, salary, department_id)
VALUES ("Product Manager", 120000, 1),
("Data Manager", 9130000, 1),
("Recruiter", 60000, 3),
("UX Designer", 80000, 4),
("Labor Attorney", 200000, 3),
("Software Developer", 110000, 2);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Justin", "Walker", 1),
("Bryan", "Hawks", 2),
("Cristina", "Acosta", 3),
("Ingrid", "Lyublinsky", 4),
("Renae", "Sowald", 5),
("Victor", "Codrean", 6);