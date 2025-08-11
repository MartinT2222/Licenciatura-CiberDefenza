# Resumen de la Administración de Memoria en Sistemas Operativos

## 1. Conceptos Básicos
- **Memoria Principal (RAM)**: Almacena datos y programas en ejecución. Es rápida pero volátil.
  
**Objetivos de la Gestión de Memoria**:
- Proporcionar espacio lógico propio a cada proceso.
- Proteger la memoria entre procesos.
- Permitir compartir memoria entre procesos.
- Organizar eficientemente las regiones de memoria (código, datos, pila).
- Maximizar el rendimiento del sistema.

---

## 2. Direcciones de Memoria
- **Dirección Lógica (Virtual)**: Generada por la CPU. Es independiente de la ubicación física en la RAM.
- **Dirección Física**: Ubicación real en la memoria principal. Traducida desde la dirección lógica por la **MMU** (Unidad de Gestión de Memoria).

**Importancia de la Distinción**:
- Facilita la multiprogramación y la protección.
- Permite la reubicación dinámica de procesos.
- Es la base de la memoria virtual.

---

## 3. Espacio de Direccionamiento
- **Espacio Lógico**: Vista abstracta de la memoria para un proceso.
- **Espacio Físico**: Memoria RAM real. El sistema operativo traduce direcciones lógicas a físicas.

---

## 4. Sistemas Monoprogramados
- La memoria se divide en dos partes: una para el SO y otra para el programa en ejecución.
- **Simple** pero **ineficiente** en la utilización de recursos.

---

## 5. Sistemas Multiprogramados
### Particiones Fijas:
- **Mismo Tamaño**: Facilita la asignación pero causa **fragmentación interna**.
- **Diferentes Tamaños**: Reduce la fragmentación interna pero puede dejar particiones grandes sin usar.

### Particiones Dinámicas:
- Asignan memoria según el tamaño exacto del proceso.
- **Fragmentación Externa**: Huecos entre particiones que requieren compactación.

**Algoritmos de Asignación**:
- **Primer Ajuste (First-fit)**: Asigna el primer bloque disponible que cumpla.
- **Mejor Ajuste (Best-fit)**: Asigna el bloque más cercano al tamaño requerido.
- **Peor Ajuste (Worst-fit)**: Asigna el bloque más grande para dejar espacio utilizable.

---

## 6. Fragmentación
- **Interna**: Espacio desperdiciado dentro de una partición asignada.
- **Externa**: Espacio libre entre particiones que no se puede utilizar eficientemente.
- **Compactación**: Solución para la fragmentación externa, pero consume recursos.

---

## 7. Técnicas Avanzadas
- **Paginación**: Divide la memoria en páginas de tamaño fijo. Elimina la fragmentación externa pero puede tener fragmentación interna.
- **Segmentación**: Divide la memoria en segmentos de tamaño variable. Más natural para el programador pero sufre de fragmentación externa.
- **Memoria Virtual**: Combina paginación/segmentación con almacenamiento secundario para simular más memoria de la físicamente disponible.

---

## 8. Comparación de Técnicas
| Técnica               | Ventajas                                | Desventajas                                  |
|-----------------------|----------------------------------------|---------------------------------------------|
| **Particiones Fijas** | Simple, baja sobrecarga.               | Fragmentación interna, límite de procesos.  |
| **Particiones Dinámicas** | Sin fragmentación interna.         | Fragmentación externa, requiere compactación. |
| **Paginación**        | Sin fragmentación externa.             | Fragmentación interna, complejidad.         |
| **Segmentación**      | Organización lógica natural.           | Fragmentación externa, gestión compleja.    |

---

## 9. Conclusión
La gestión de memoria es esencial para la eficiencia y estabilidad del sistema. Las técnicas evolucionan desde esquemas simples (particiones fijas) hasta métodos avanzados (paginación, segmentación y memoria virtual) para optimizar el uso de recursos y facilitar la ejecución concurrente de procesos.

