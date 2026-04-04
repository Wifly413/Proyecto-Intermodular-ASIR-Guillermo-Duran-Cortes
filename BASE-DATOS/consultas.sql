-- Listado de Empleados por Departamento (JOIN y Ordenación)

SELECT 
e.nombre_completo, 
e.rol, 
d.nombre_dept, 
d.vlan_asociada
FROM Empleados e
JOIN Departamentos d ON e.id_dept = d.id_dept
ORDER BY d.vlan_asociada;

-- Inventario de Hardware por Red (Filtros y Búsqueda)

SELECT tipo_equipo, ip_estatica
FROM Hardware
WHERE tipo_equipo LIKE '%Servidor%' OR tipo_equipo LIKE '%PC%'
AND ip_estatica LIKE '192.168.60.%';

-- Seguimiento de Bugs Críticos (Filtros y JOIN)

SELECT t.descripcion_bug, t.estado, p.titulo_juegos
FROM Tickets t
JOIN Proyectos p ON t.id_proy = p.id_proy
WHERE t.estado != 'Resuelto';

-- Control de Carga de Proyectos (JOIN de 3 tablas y Agrupación)

SELECT p.titulo_juegos, COUNT(ep.id_emp) AS num_empleados, SUM(ep.horas_asignadas) AS total_horas
FROM Proyectos p
JOIN Empleados_Proyectos ep ON p.id_proy = ep.id_proy
GROUP BY p.titulo_juegos;

-- Búsqueda de Proyectos Próximos (Filtro de Fecha)

SELECT titulo_juegos, fase_desarrollo, fecha_lanzamiento
FROM Proyectos
WHERE fecha_lanzamiento > '2025-01-01'
ORDER BY fecha_lanzamiento ASC;

-- Mapa de Responsabilidad de Bugs

SELECT t.descripcion_bug, p.titulo_juegos, e.nombre_completo AS responsable_qa, d.nombre_dept
FROM Tickets t
INNER JOIN Proyectos p ON t.id_proy = p.id_proy
INNER JOIN Empleados e ON t.id_emp = e.id_emp
INNER JOIN Departamentos d ON e.id_dept = d.id_dept
WHERE t.estado = 'Abierto';

-- Auditoría de Proyectos sin Personal

SELECT p.titulo_juegos, p.fase_desarrollo, e.nombre_completo AS empleado_asignado
FROM Proyectos p
LEFT JOIN Empleados_Proyectos ep ON p.id_proy = ep.id_proy
LEFT JOIN Empleados e ON ep.id_emp = e.id_emp;