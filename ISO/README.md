# Proyecto Intermodular PROMETEO: Infraestructura de Red
> Diseño, implementación y documentación de red corporativa para BugiSoft (1º ASIR).

# 1. Análisis de necesidades del sistema

En este apartado vamos a ver qué sistemas operativos hacen falta para darle vida a **BugiSoft**, mi estudio ficticio dedicado a crear videojuegos de gran presupuesto (AAA) y mantener juegos como servicio (Live Service):

### ● Sistema operativo para servidores
Para cubrir las necesidades de los servidores la decision es bastante facil:

* **Elección:** **Ubuntu Server 24.04 LTS** para el servidor web.
* **Justificación:**
    * **Rendimiento y Estabilidad:** Ubuntu Server es ideal para el servidor web ya que nos da un entorno , ligero , de bajo coste y eficiente para alojar los servicios online de los videojuegos.

### ● Sistema operativo para equipos de usuario
Los puestos de trabajo de las distintas áreas de la empresa requieren un entorno que equilibre la potencia de desarrollo con la facilidad de gestión administrativa:

* **Elección:** **Windows 11 Pro**.
* **Justificación:**
    * **Compatibilidad :** Es el sistema estándar para el desarrollo de videojuegos, asegurando la compatibilidad nativa con motores gráficos profesionales .
    * **Centralizado:** La versión **Pro** es necesaria para integrar los equipos en el dominio del servidor, permitiendo aplicar políticas de seguridad.
    * **Entorno Administrativo:** Ofrece la mejor compatibilidad para las tareas de ofimática y gestión de los departamentos de **Administración** y **Dirección**.

### ● Sistemas específicos según el proyecto
Para necesidades técnicas puntuales o entornos aislados, se definen los siguientes sistemas adicionales:

* **Elección:** **Linux** (vía virtualización o WSL2) y **Sistemas Ligeros** para invitados.
* **Justificación:**
    * **Especialización técnica:** Para tareas pesadas como juntar todas las piezas del código (compilar) o mantener las bases de datos, los programadores prefieren tirar de entornos Linux, ya que están mejor preparados para eso y rinden bastante mejor.
    * **Seguridad de Invitados:** Para los usuarios externos, se dan sistemas operativos pero con restricciones para no acceder al sistema.

---

# 2. Plan de implantación del sistema operativo

Para desplegar el sistema operativo de nuestro servidor principal de datos e identidades (**SRV-DATA-01**), he decidido realizar una **instalación mediante máquinas virtuales** utilizando Virtualbox.

He elegido este método porque es el más lógico para una empresa como BugiSoft:
* **Seguridad :** Trabajar con máquinas virtuales me permite hacer "fotos" del estado del servidor. Si rompo algo trasteando con las configuraciones, puedo volver al estado anterior en un clic.
* **Aprovechamiento del hardware:** Me permite tener este Windows Server 2025 y el futuro servidor web (Ubuntu) conviviendo dentro del mismo ordenador físico, ahorrando mucho dinero en equipos.

Aqui tenemos la configuracion inicial en VB , elegiendo windows , asiganndole la version  a Windows server 2025,asignandole los nucleos de la CPU correspondientes, la RAM(de 6gb para arriba) y el tamaño del disco duro (+50Gb)
![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)

Antes de iniciar la maquina debemos configurar la red con adaptador puente , y añadir la imagen al almacenamiento para ejecutarla.Tambien añadiremos 4 discos extra para hacer un Raid 10, esto garantizará máxima velocidad de lectura/escritura y tolerancia a fallos físicos.

![alt text](image-3.png)

![alt text](image-4.png)

