# Cuadros Comparativos – Unidad 1 Transmisión de Datos

---

## 1. Transmisión Analógica vs Digital

| Característica | Transmisión Analógica | Transmisión Digital |
|----------------|------------------------|----------------------|
| Representación de la información | Forma de la onda (continua) | Codificación de bits (discreta) |
| Valores posibles | Infinitos en un intervalo | Finitos (0 y 1) |
| Problemas | Atenuación, distorsión, ruido (difíciles de corregir) | También sufren atenuación, distorsión y ruido, pero se pueden regenerar |
| Procesamiento | Requiere circuitos analógicos complejos | Puede procesarse con computadoras digitales |
| Calidad | Se degrada con la distancia y ruido | Calidad ajustable, regeneración permite "alcance infinito" |
| Costo | Más costosa y compleja | Más económica y flexible |
| Ejemplo | Señal de radio, audio analógico | Ethernet, transmisión por fibra óptica |

---

## 2. Transmisión Sincrónica vs Asincrónica

| Característica | Sincrónica | Asincrónica |
|----------------|------------|-------------|
| Sincronización | Usa reloj compartido entre transmisor y receptor | No usa reloj compartido; sincroniza carácter a carácter |
| Encapsulamiento | Se envían tramas de datos completas | Cada carácter se envía con bit de inicio y de parada |
| Eficiencia | Mayor (menos bits extra) | Menor (más bits de control) |
| Complejidad | Más compleja | Más simple |
| Ejemplo | Ethernet, videoconferencia, chat en tiempo real | Transmisión por puerto serie, teclado |

---

## 3. Modos de Transmisión: Simplex, Semidúplex y Dúplex

| Modo | Dirección de comunicación | Ejemplo | Observaciones |
|------|----------------------------|---------|---------------|
| Simplex | Unidireccional (solo transmite o solo recibe) | Televisión, radio | El receptor no puede enviar retroalimentación |
| Semidúplex | Bidireccional pero no simultánea | Walkie-talkie, redes inalámbricas con dos frecuencias | Requiere coordinar turnos de transmisión |
| Dúplex (Full) | Bidireccional simultánea | Telefonía, Ethernet full dúplex | Usa dos canales (o frecuencias) distintos |

---

## 4. Tipos de Codificación en Banda Base

| Código | Característica principal | Ventajas |
|--------|--------------------------|----------|
| Unipolar | Solo usa un nivel positivo (1 = voltaje, 0 = 0V) | Simple, pero con componente continua alta |
| Polar NRZ | Usa niveles positivos y negativos | Reduce componente continua |
| Manchester | Siempre hay transición en el medio del bit | Sincronización garantizada, componente continua reducida |

