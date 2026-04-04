-- Listado de Empleados por Departamento (JOIN y Ordenación)

SELECT 
e.nombre_completo, 
e.rol, 
d.nombre_dept, 
d.vlan_asociada
FROM Empleados e
JOIN Departamentos d ON e.id_dept = d.id_dept
ORDER BY d.vlan_asociada;