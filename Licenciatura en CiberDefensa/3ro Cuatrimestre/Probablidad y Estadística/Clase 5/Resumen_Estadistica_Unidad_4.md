# Resumen: Probabilidad y Estadística - Unidad 4

**Institución:** FADENA - Universidad de la Defensa Nacional  
**Profesora:** Dra. Romina Caballero  

Este documento resume los conceptos clave sobre teoría elemental de muestreo, población y diseño muestral presentados en la Clase 5 (Unidad 4).

---

## 1. Conceptos Fundamentales

* **Población:** Conjunto de unidades de análisis que son objeto de un estudio particular.
  * *Finita:* El número de elementos es limitado y se puede tener acceso a ellos.
  * *Infinita:* El número de elementos es tan elevado que se considera ilimitado.
  * *Hipotética:* Cuando no hay posibilidad de delimitar la población completa.
* **Muestra:** Subconjunto de una población que comparte sus características en los aspectos de interés para la investigación.
* **Muestreo:** Conjunto de procedimientos mediante los cuales se selecciona una muestra de una población. Es la ciencia y arte de controlar y medir la confiabilidad de la información estadística mediante la probabilidad.
* **Inferencia:** Extraer conclusiones sobre una población a partir de una muestra, controlando el error de muestreo.
* **Marco de Muestreo:** Listado que comprende las unidades de la población. Puede sufrir de sub-enumeración o sobre-enumeración.

## 2. Parámetros, Estadísticos y Estimadores

* **Parámetro ($	heta$):** Característica fija, generalmente numérica, de la población. Ejemplos: Media poblacional ($\mu$), Desviación estándar poblacional ($\sigma$), Proporción ($P$). Son valores reales pero generalmente desconocidos.
* **Estadístico:** Variable cuyos valores dependen exclusivamente de una muestra. Ejemplos: Media muestral ($ar{X}$), Desviación estándar muestral ($S$), Proporción muestral ($p$).
* **Estimador ($\hat{	heta}$):** Estadístico cuyos valores se consideran próximos a un parámetro desconocido que se desea estimar. Un buen estimador es insesgado (la esperanza del estimador es el parámetro real: $E(\hat{	heta}) = 	heta$).
* **Error Muestral ($\epsilon$):** Diferencia entre el parámetro real y el estimador calculado: $\epsilon = |	heta - \hat{	heta}|$.

## 3. Tipos de Muestreo

### Muestreo Probabilístico
La selección es aleatoria, garantizando que cada unidad de la población tenga una probabilidad conocida de ser seleccionada. Esto asegura imparcialidad y permite representatividad y cálculo del error muestral.

1. **Muestreo Aleatorio Simple (MAS):** Procedimiento que asegura que todas las muestras posibles de tamaño *n* tienen la misma probabilidad de ser elegidas. Se suelen usar tablas de números aleatorios o generadores por software.
2. **Muestreo Sistemático (MS):** Derivación del MAS, útil cuando la población está ordenada o en flujos (ej. eventos de red en tiempo real). Se calcula un factor de salto $K = N/n$ y se selecciona un elemento al azar como inicio, luego se suma $K$ sucesivamente.
3. **Muestreo Estratificado:** La población se divide en segmentos o grupos (estratos) homogéneos internamente utilizando información previa (ej. tipos de sistemas informáticos). Luego se extrae una muestra de cada estrato usando MAS o MS.
4. **Muestreo por Conglomerados:** La población se divide en conjuntos de unidades elementales llamados conglomerados (ej. manzanas, hogares). Se seleccionan conglomerados completos al azar. Idealmente, cada conglomerado debe ser un reflejo heterogéneo de la población total.

### Muestreo No Probabilístico
La elección de los elementos no depende de la probabilidad, sino de decisiones del investigador. **No se puede determinar el error de muestreo** y los resultados **no son generalizables** estadísticamente a la población.

* **Tipos:**
  * De participantes voluntarios o autoseleccionada.
  * De expertos.
  * De casos tipos o intencional.
  * Por cuotas.
  * Cuasi probabilístico.
  * De captura y recaptura.
  *(Suelen orientarse más a investigaciones de tipo cualitativo)*

## 4. Cálculo del Tamaño de la Muestra ($n$)

Para lograr una muestra representativa con un margen de error y un nivel de confianza deseados, se utilizan fórmulas basadas en:
* $N$: Tamaño de la población.
* $Z$: Nivel de confianza establecido por el investigador (ej. $Z=1.96$ para 95%, $Z=2.58$ para 99%).
* $e$: Margen de error tolerado.
* $p$: Probabilidad de que el evento ocurra (y $q = 1-p$).

Existen fórmulas específicas para calcular $n$ dependiendo de si la población es finita (donde se aplica un factor de corrección) o si es infinita/desconocida.
