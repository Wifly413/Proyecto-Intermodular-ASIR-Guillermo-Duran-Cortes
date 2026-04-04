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