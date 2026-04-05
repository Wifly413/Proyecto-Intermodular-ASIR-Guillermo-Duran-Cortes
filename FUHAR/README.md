#  Proyecto Intermodular: PROMETEO (Fundamentos de Hardware)

Bienvenido al documento de infraestructura de **BugiSoft**, un estudio especializado en el desarrollo de videojuegos de alto presupuesto (AAA) y sistemas Live Service.

##  Sobre el Proyecto
Este proyecto detalla el análisis y diseño de la infraestructura física necesaria para dar soporte a la empresa. El objetivo es justificar el hardware elegido para los diferentes departamentos, asegurando rendimiento, escalabilidad y un uso inteligente del presupuesto.

##  Perfiles de Red (VLANs)
La infraestructura se divide en tres pilares fundamentales:
* **VLAN 30 (Desarrollo):** Estaciones de trabajo de altísimo rendimiento para compilación de código y renderizado 3D.
* **VLAN 10 (Administración):** Equipos ofimáticos eficientes y de bajo coste para gestión y RRHH.
* **VLAN 60 (Servidores):** Infraestructura de alta disponibilidad (NAS/RAID) para almacenamiento seguro 24/7.

##  Hardware Destacado (Estación de Desarrollo)
]Nuestra máquina principal está diseñada para eliminar los tiempos de carga y maximizar la productividad:
* **CPU:** AMD Ryzen 9 9950X (16 núcleos).
* **GPU:** ASUS TUF RTX 5070 Ti 16GB.
* **RAM:** 32 GB DDR5 6000 MHz (Ampliables a 64 GB).
* **Almacenamiento:** Crucial T710 2TB Gen 5 (14.500 MB/s).

##  Evolución y Escalabilidad
El sistema está preparado para crecer si la empresa supera los 50 empleados:
1. **Redes a 10 Gbps:** Para evitar la saturación al abrir archivos pesados.
2. **Servidores Rack:** Sustitución del NAS básico por armarios de servidores dedicados.


## 👨 Autor
* **Guillermo Durán Cortés** 
* **Curso:** 1º ASIR (2025-2026) 
* **Módulo:** Fundamentos de Hardware (0371) 