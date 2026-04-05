#  Proyecto Intermodular: PROMETEO (Fundamentos de Hardware)

Bienvenido al documento de infraestructura de **BugiSoft**, un estudio especializado en el desarrollo de videojuegos de alto presupuesto (AAA) y sistemas Live Service.

##  Sobre el Proyecto
Este proyecto detalla el análisis y diseño de la infraestructura física necesaria para dar soporte a la empresa. El objetivo es justificar el hardware elegido para los diferentes departamentos, asegurando rendimiento, escalabilidad y un uso inteligente del presupuesto.

##  Perfiles de Red (VLANs)
]La infraestructura se divide en tres pilares fundamentales[cite: 7, 8]:
* **VLAN 30 (Desarrollo):** Estaciones de trabajo de altísimo rendimiento para compilación de código y renderizado 3D[cite: 31, 32].
* **VLAN 10 (Administración):** Equipos ofimáticos eficientes y de bajo coste para gestión y RRHH[cite: 36].
* **VLAN 60 (Servidores):** Infraestructura de alta disponibilidad (NAS/RAID) para almacenamiento seguro 24/7[cite: 40, 42].

##  Hardware Destacado (Estación de Desarrollo)
]Nuestra máquina principal está diseñada para eliminar los tiempos de carga y maximizar la productividad[cite: 391, 392]:
* **CPU:** AMD Ryzen 9 9950X (16 núcleos)[cite: 395].
* **GPU:** ASUS TUF RTX 5070 Ti 16GB[cite: 395].
* **RAM:** 32 GB DDR5 6000 MHz (Ampliables a 64 GB)[cite: 395, 429].
* **Almacenamiento:** Crucial T710 2TB Gen 5 (14.500 MB/s)[cite: 395].

##  Evolución y Escalabilidad
El sistema está preparado para crecer si la empresa supera los 50 empleados[cite: 444]:
1. **Redes a 10 Gbps:** Para evitar la saturación al abrir archivos pesados[cite: 445].
2. **Servidores Rack:** Sustitución del NAS básico por armarios de servidores dedicados[cite: 448].


## 👨 Autor
* **Guillermo Durán Cortés** [cite: 4]
* **Curso:** 1º ASIR (2025-2026) [cite: 3]
* **Módulo:** Fundamentos de Hardware (0371) [cite: 4]