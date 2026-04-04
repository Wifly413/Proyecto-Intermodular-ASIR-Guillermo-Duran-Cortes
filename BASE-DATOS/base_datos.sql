-- 2. Crear tabla Departamentos
CREATE TABLE Departamentos (
    id_dept INT  AUTO_INCREMENT PRIMARY KEY,
    nombre_dept VARCHAR(20) NOT NULL,
    vlan_asociada INT
);

-- 3. Crear tabla Proyectos
CREATE TABLE Proyectos (
    id_proy INT AUTO_INCREMENT PRIMARY KEY,
    titulo_juegos VARCHAR(20) NOT NULL,
    fase_desarrollo VARCHAR(20),
    fecha_lanzamiento DATE
);

-- 4. Crear tabla Empleados
CREATE TABLE Empleados (
    id_emp INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(30) NOT NULL,
    rol VARCHAR(20) NOT NULL,
    id_dept INT,
    
    CONSTRAINT fk_empleado_dept FOREIGN KEY (id_dept) REFERENCES Departamentos(id_dept)
);

-- 5. Crear tabla Hardware
CREATE TABLE Hardware (
    id_hw INT AUTO_INCREMENT PRIMARY KEY,
    tipo_equipo VARCHAR(20),
    ip_estatica VARCHAR(30) UNIQUE,
    id_dept INT,
    
    CONSTRAINT fk_hardware_dept FOREIGN KEY (id_dept) REFERENCES Departamentos(id_dept)
);

-- 6. Crear Tabla Intermedia Empleados_Proyectos
CREATE TABLE Empleados_Proyectos (
    id_emp INT,
    id_proy INT,
    
    horas_asignadas INT CHECK (horas_asignadas > 0),
    PRIMARY KEY (id_emp, id_proy),
    
    CONSTRAINT fk_ep_empleado FOREIGN KEY (id_emp) REFERENCES Empleados(id_emp),

    CONSTRAINT fk_ep_proyecto FOREIGN KEY (id_proy) REFERENCES Proyectos(id_proy)
);

-- 7. Crear tabla Tickets
CREATE TABLE Tickets (
    id_ticket INT PRIMARY KEY,
    descripcion_bug VARCHAR(40) NOT NULL,
    estado VARCHAR(10),
    id_proy INT,
    id_emp INT, 
    
    CONSTRAINT fk_ticket_proyecto FOREIGN KEY (id_proy) REFERENCES Proyectos(id_proy),

    CONSTRAINT fk_ticket_tester FOREIGN KEY (id_emp) REFERENCES Empleados(id_emp)
);