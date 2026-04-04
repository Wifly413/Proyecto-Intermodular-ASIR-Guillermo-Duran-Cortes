INSERT INTO Departamentos (nombre_dept, vlan_asociada) VALUES
('ADMIN_RECEP', 10),    
('DIRECCION', 20),      
('DESARROLLO', 30),     
('SOPORTE_QA', 40),     
('FORMACION', 50),      
('SERVIDORES', 60);

INSERT INTO Proyectos (titulo_juegos, fase_desarrollo, fecha_lanzamiento) VALUES
('BugiSoft Ultimate', 'Fase Alpha', '2026-11-15'),
('CyberBugs 2077', 'Mantenimiento', '2023-12-10'),
('Medieval Crash', 'Pre-produccion', '2027-05-20'),
('Galaxy Explorers', 'Fase Beta', '2025-08-10'),
('Racing Fury', 'Lanzado', '2022-03-15'),
('Puzzle Master', 'Concepto', '2028-01-01');

INSERT INTO Empleados (nombre_completo, rol, id_dept) VALUES
('Guillermo Duran', 'Experto Redes', 6),      
('Nau Doreste', 'Lead Developer', 3),           
('Sergio Gallardo', 'Profesor', 5),           
('Luz Maria', 'Jefa de QA', 4),               
('Gabe Newell', 'Especialista Soporte', 4),      
('Shigeru Miyamoto', 'Director de Arte', 2);     

INSERT INTO Hardware (tipo_equipo, ip_estatica, id_dept) VALUES
('Servidor Principal', '192.168.60.2', 6),       
('Servidor Respaldo', '192.168.60.3', 6),        
('PC Desarrollo 01', '192.168.30.10', 3),        
('PC Tester QA 01', '192.168.40.10', 4),         
('MacBook Arte 01', '192.168.50.10', 1),        
('PC Administracion', '192.168.10.10', 1);      

INSERT INTO Empleados_Proyectos (id_emp, id_proy, horas_asignadas) VALUES
(2, 1, 40), 
(3, 1, 30), 
(3, 3, 15), 
(4, 1, 25), 
(4, 2, 20), 
(6, 4, 35); 

INSERT INTO Tickets (descripcion_bug, estado, id_proy, id_emp) VALUES
('Personaje atraviesa paredes nv3', 'Abierto', 1, 4),
('Caida de FPS al lanzar granadas', 'En curso', 1, 5),
('Error 404 en server de ranking', 'Resuelto', 2, 4),
('Crasheo al abrir el inventario', 'Abierto', 4, 5),
('Texturas en negro en el coche', 'Resuelto', 5, 4),
('Audio desincronizado en menu', 'En curso', 3, 5);