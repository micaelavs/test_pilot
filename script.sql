-- Crear la tabla APPX_employee
CREATE TABLE APPX_employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    educationlevel_id INT,
    FOREIGN KEY (department_id) REFERENCES APPX_department(id),
    FOREIGN KEY (educationlevel_id) REFERENCES APPX_educationlevel(id)
);

-- Crear la tabla APPX_department
CREATE TABLE APPX_department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50),
    department_city VARCHAR(50)
);

-- Crear la tabla APPX_educationlevel
CREATE TABLE APPX_educationlevel (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(50)
);

-- Insertar datos en APPX_educationlevel
INSERT INTO APPX_educationlevel (description) VALUES
    ('Bachiller'),
    ('Licenciado'),
    ('Maestría'),
    ('Doctorado');

-- Insertar datos en APPX_department
INSERT INTO APPX_department (department_name, department_city) VALUES
    ('Departamento A', 'Ciudad A'),
    ('Departamento B', 'Ciudad B'),
    ('Departamento C', 'Ciudad C');

-- Insertar datos en APPX_employee
INSERT INTO APPX_employee (firstname, lastname, department_id, salary, educationlevel_id) VALUES
    ('Juan', 'Pérez', 1, 50000.00, 2),
    ('María', 'Gómez', 2, 60000.00, 3),
    ('Pedro', 'López', 3, 75000.00, 1);