# Proyecto Intermodular 1º ASIR - Infraestructura BugiSoft

Este repositorio contiene el diseño, despliegue y documentación técnica de la infraestructura informática completa para **BugiSoft**, un estudio ficticio especializado en el desarrollo de videojuegos de alto presupuesto (AAA) y sistemas Live Service. 

El objetivo de este proyecto intermodular es demostrar la integración práctica de todos los conocimientos adquiridos durante el primer curso de Administración de Sistemas Informáticos y Redes (ASIR), creando un entorno corporativo seguro, escalable y funcional.

---

## Resumen Tecnológico del Proyecto

A continuación se presenta un desglose de las tecnologías implementadas en cada área de la infraestructura:

| Módulo del Ciclo | Tecnologías y Herramientas | Objetivo Principal dentro del Proyecto |
| :--- | :--- | :--- |
| **Redes** | Cisco Packet Tracer, OSPF, DHCP | Enrutamiento Inter-VLAN y securización del tráfico corporativo. |
| **Sistemas** | Windows Server 2025, Ubuntu, AD DS | Centralización de identidades, permisos y recursos compartidos. |
| **Bases de Datos** | MariaDB, SQL | Almacenamiento estructurado de la gestión de la empresa y roles. |
| **Cloud** | AWS (EC2, RDS), Security Groups | Despliegue híbrido de la base de datos y aplicativos internos. |
| **Hardware** | Arquitecturas x86, RAID, NVMe | Diseño de estaciones de trabajo AAA y servidores locales. |
| **Lenguajes** | XML, DTD, XSLT, HTML, CSS | Documentación validada e interactiva de la topología de red. |
| **Empleabilidad** | GitHub, Markdown, Portfolio | Creación de identidad profesional y presentación del proyecto. |

---

## Arquitectura y Módulos Desarrollados

### 1. Planificación y Administración de Redes
Se ha diseñado una red corporativa jerárquica para las dos plantas del estudio.
* **Segmentación:** La red está dividida en 7 VLANs (Administración, Dirección, Desarrollo, Soporte, Formación, Servidores e Invitados) para aislar los dominios de difusión.
* **Enrutamiento:** Se ha implementado un Switch de Capa 3 (SW-CORE-01) para gestionar el enrutamiento inter-VLAN de forma nativa por hardware, liberando al router principal.
* **Seguridad:** Implementación de Listas de Control de Acceso (ACLs) estrictas bajo el principio de menor privilegio. Se ha aislado completamente la red de invitados y se ha restringido el acceso administrativo (SSH/Telnet) exclusivamente a la VLAN de Gestión (VLAN 99).

### 2. Implantación de Sistemas Operativos
Despliegue del núcleo lógico de la empresa mediante virtualización.
* **Controlador de Dominio:** Instalación de Windows Server 2025 configurado con Active Directory Domain Services (AD DS) y servidor DNS local.
* **Gestión Jerárquica:** Creación de Unidades Organizativas (OUs) para separar a los departamentos (Desarrollo, Soporte, Administración) y despliegue de grupos de seguridad globales.
* **Servicios Compartidos:** Configuración de un File Server con permisos granulares (NTFS) para que los desarrolladores compartan activos pesados de forma segura, y habilitación de acceso RDP restringido.

### 3. Gestión de Bases de Datos
Diseño de la estructura de datos que sostiene la administración del estudio.
* **Modelo Relacional:** Creación de una base de datos en MariaDB compuesta por 5 tablas interconectadas: Empleados, Departamentos, Proyectos, Tickets de control de calidad (QA) e Inventario de Hardware.
* **Control de Accesos:** Creación de usuarios de base de datos con sentencias GRANT y privilegios limitados. Se incluyen roles específicos como un auditor con permisos exclusivos de lectura o desarrolladores con permisos de edición acotados a sus proyectos.

### 4. Computación en la Nube (AWS)
Propuesta de una arquitectura en la nube escalable y segura utilizando Amazon Web Services.
* **Infraestructura Separada:** Despliegue de la aplicación de gestión interna en una instancia de computación Amazon EC2 (Ubuntu), conectada a una base de datos gestionada por Amazon RDS (MariaDB).
* **Seguridad de Red en Cloud:** Configuración de Security Groups (Firewalls) para asegurar que el puerto 3306 de la base de datos no esté expuesto a internet, aceptando tráfico únicamente desde la instancia EC2.

### 5. Fundamentos de Hardware
Análisis y dimensionamiento de la infraestructura física necesaria para la empresa.
* **Equipos de Alto Rendimiento:** Diseño detallado de una Workstation para desarrollo en motores gráficos (ej. Unreal Engine 5), equipada con procesador AMD Ryzen 9 9950X, 32GB RAM DDR5, almacenamiento NVMe PCIe 5.0 y GPU NVIDIA RTX 5070 Ti.
* **Almacenamiento:** Justificación técnica de las soluciones de almacenamiento (SSD NVMe vs HDD vs NAS) según las necesidades de lectura/escritura de cada departamento.

### 6. Lenguajes de Marcas y Sistemas de Gestión de Información
Tratamiento de la información corporativa mediante estándares estructurados.
* **Validación de Datos:** Creación de un documento XML que mapea la infraestructura de red del estudio, validado mediante un esquema DTD estricto para garantizar su integridad estructural.
* **Transformación Visual:** Desarrollo de una hoja de estilos XSLT que convierte los datos en bruto a un reporte HTML responsivo, apoyado con Bootstrap 5 para su correcta lectura y presentación en navegadores.

### 7. Itinerario Personal para la Empleabilidad I
Construcción de la identidad profesional y proyección en el sector tecnológico.
* **Perfil Profesional:** Definición de objetivos, especialización en Ciberseguridad e IA (LLMs) y plan de carrera a medio plazo.
* **Exploración del Sector:** Análisis de empresas referentes (CrowdStrike, Hugging Face, Riot Games) y de profesionales clave en el mercado actual para guiar el aprendizaje autodidacta].
* **Portfolio y Presentación:** Recopilación de todos los hitos técnicos del proyecto BugiSoft en un documento estructurado y alojado en GitHub, demostrando capacidad de organización y presentación hacia el entorno laboral.

