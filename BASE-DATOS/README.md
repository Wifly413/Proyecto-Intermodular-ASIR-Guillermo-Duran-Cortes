#  Proyecto: Gestión de Base de Datos - BugiSoft_DB

Este repositorio contiene el diseño, implementación y administración de la base de datos centralizada para **BugiSoft**, un estudio de desarrollo de videojuegos. El proyecto está diseñado para integrarse con la infraestructura de red corporativa segmentada por VLANs.

---

##  1. Mi empresa: BugiSoft
BugiSoft requiere una solución robusta para gestionar el flujo de trabajo diario de un estudio de videojuegos. La base de datos centraliza:
* **Recursos Humanos:** Gestión de empleados y departamentos.
* **Infraestructura:** Inventario de hardware vinculado a subredes específicas.
* **Producción:** Seguimiento de proyectos de desarrollo.
* **QA (Control de Calidad):** Sistema de reporte de errores (Tickets).

##  2. Arquitectura de Datos
La base de datos se ha normalizado en **3ª Forma Normal (3NF)** para garantizar la integridad y eficiencia.

### **Estructura de Tablas:**
1.  `departamentos`: Centros de coste y organización.
2.  `empleados`: Datos del personal técnico y docente.
3.  `hardware`: Equipos informáticos con asignación de **IP estáticas**.
4.  `proyectos`: Videojuegos en fase de desarrollo activo.
5.  `empleados_proyectos`: Tabla intermedia (N:M) para asignación de equipos de trabajo.
6.  `tickets`: Registro de incidencias y bugs detectados por QA.

---

##  3. Instrucciones de Despliegue
Para replicar el entorno en un servidor local (XAMPP/MariaDB), ejecute los scripts en este orden:

1.  **`1_creacion_tablas.sql`**: Definición de esquema y claves foráneas.
2.  **`2_insercion_datos.sql`**: Carga de datos iniciales.
3.  **`3_consultas_y_admin.sql`**: Pruebas de explotación y seguridad.

---

##  4. Seguridad y Administración (DCL)
Siguiendo el **Principio de Menor Privilegio**, se han configurado roles de acceso específicos:

| Usuario | Perfil | Permisos |
| :--- | :--- | :--- |
| `admin_redes` | Administrador | Acceso total (`ALL PRIVILEGES`) |
| `user_qa` | Soporte Técnico | Solo lectura (`SELECT`) e inserción en Tickets |

