INSERT INTO department (dept_name) VALUES ('Back of Restaurant'), ('Front of Restaurant'), ('Managers');
INSERT INTO company_role (title, salary, dept_id) VALUES
('Manager', 80000.00, 3), 
('Chef', 60000.00, 1),
('Pastry Chef', 30000.00, 1),
('Sushi Chef', 30000.00, 1 ),
('Janitorial', 20000.00, 1),                
('Major D', 40000.00, 2),
('Host', 30000.00, 2),
('Waiter', 20000.00, 1);

INSERT INTO employees (first_name, last_name, emp_role_id, manager_id) VALUES
('Billy', 'Bob', 1, null),
('Ezekial', 'Masterson', 6, 1),
('Gil', 'Buckwheat', 2, null);