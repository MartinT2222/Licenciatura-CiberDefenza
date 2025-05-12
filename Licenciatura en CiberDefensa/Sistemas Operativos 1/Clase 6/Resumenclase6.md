# Resumen – Unidad 2: Sistemas Operativos

## Sistemas de Proceso por Lotes y Monitores
Los **sistemas batch** ejecutan trabajos en serie sin intervención del usuario, optimizando el uso del procesador. Emplean un **monitor residente** para controlar la ejecución y utilizan **JCL (Job Control Language)** como lenguaje de control. Para mejorar el rendimiento, se implementaron técnicas como:
- **Buffering:** almacenamiento temporal para agilizar el acceso a datos.
- **Spooling:** gestión autónoma de trabajos en cola para optimizar recursos.

## Procesos
Un **proceso** es un programa en ejecución con su propio contexto y recursos. El sistema operativo debe:
- Gestionar los procesos eficientemente.
- Asignar recursos de manera adecuada.
- Facilitar la comunicación entre procesos.

## Monoprogramación y Multiprogramación
- **Monoprogramación:** Solo un proceso se ejecuta a la vez, con tiempos ociosos del procesador.
- **Multiprogramación:** Varios procesos se ejecutan en paralelo (aparente), mejorando la utilización de la CPU.

## Multiprocesamiento y Procesamiento Distribuido
- **Multiprocesamiento:** Varios CPU dentro de una misma computadora ejecutan tareas simultáneamente.
- **Procesamiento distribuido:** Las tareas se ejecutan en diferentes computadoras conectadas en red.

## Sistemas de Tiempo Compartido (*Timesharing*)
Estos sistemas permiten que múltiples usuarios interactúen simultáneamente con una computadora mediante la asignación dinámica de recursos. Algunos ejemplos históricos incluyen **CTSS, MULTICS y UNIX**.

## Kernel del Sistema Operativo
El **kernel** es el núcleo del sistema operativo, encargado de:
- Gestionar los recursos del sistema.
- Servir de interfaz entre el hardware y las aplicaciones.
- Facilitar la comunicación entre procesos y llamadas al sistema.

## Modo Núcleo y Modo Usuario
Existen dos niveles de ejecución en un sistema operativo:
- **Modo núcleo:** Acceso completo al hardware, exclusivo del sistema operativo.
- **Modo usuario:** Acceso limitado, utilizado por aplicaciones para evitar usos indebidos del sistema.

## Llamadas al Sistema
Las **llamadas al sistema** son el mecanismo mediante el cual los programas de usuario solicitan servicios al sistema operativo, tales como:
- Manejo de archivos.
- Gestión de procesos.
- Administración de memoria.
- Interacción con dispositivos.
- Comunicación entre procesos.

## Interrupciones
Las **interrupciones** permiten al sistema operativo responder a eventos de hardware o software sin que el procesador quede inactivo. Se clasifican en:
- **Interrupciones de programa.**
- **Interrupciones de E/S.**
- **Interrupciones de reloj.**
- **Fallas de hardware.**
