# 📘 Unidad 1 – Introducción a la transmisión de datos

## 1. Modos de Transmisión
- **Serie**: Los bits se envían uno tras otro por un solo canal. Es más económico pero más lento.  
- **Paralelo**: Varios bits se transmiten en simultáneo por múltiples canales. Es más rápido pero costoso y limitado a distancias cortas.  
- **Sincrónico**: Emisor y receptor usan un mismo reloj, transmiten datos en bloques.  
- **Asincrónico**: No hay un reloj compartido, cada carácter se envía con bits de inicio y parada.  

---

## 2. Tipos de Transmisión
- **Simplex**: La comunicación va en un único sentido (ejemplo: TV abierta).  
- **Semidúplex**: Ambos equipos pueden transmitir, pero no al mismo tiempo (ejemplo: walkie-talkie).  
- **Dúplex o Full-Dúplex**: Comunicación bidireccional simultánea (ejemplo: telefonía).  

---

## 3. Transmisión Asincrónica
- Los datos se envían carácter por carácter.  
- Usa **bit de inicio** y **bit de parada** para indicar el comienzo y el fin de cada carácter.  
- Es más simple, pero menos eficiente.  

---

## 4. Transmisión Sincrónica
- Los datos se transmiten en bloques grandes, sincronizados con un reloj compartido.  
- **Ejemplos de uso**:
  - **Audioconferencia**: comunicación de voz en tiempo real.  
  - **Videoconferencia**: comunicación con audio y video simultáneo.  
  - **Chat**: intercambio de mensajes de texto en tiempo real.  
  - **Mensajería instantánea**: como WhatsApp, permite enviar texto, audios, videos y documentos en tiempo real.  

---

## 5. Señales

### Señales Analógicas
- Representan la información en la forma de la onda.  
- Pueden tomar infinitos valores en un intervalo.  
- Problemas: atenuación, distorsión y ruido.  
- Solo la atenuación puede compensarse parcialmente.  

### Señales Digitales
- Toman un número finito de valores.  
- La información está en la **codificación** y no en la forma de onda.  
- También sufren atenuación y ruido, pero **se pueden regenerar**, manteniendo la calidad.  

---

## 6. Transmisión Digital vs Analógica

### Ventajas de la transmisión digital:
1. Alcance prácticamente infinito (regeneración de señal).  
2. Calidad del enlace ajustable.  
3. En un mismo canal físico pueden coexistir varias comunicaciones.  
4. Uso de computadoras digitales para procesar señales → servicios de valor agregado (ej: PBX).  
5. Sistemas más económicos y menos complejos.  
6. Fibra óptica se adapta mejor a señales digitales.  

### Desventaja:
- Necesidad de conversión **A/D** (analógico a digital en transmisión) y **D/A** (digital a analógico en recepción).  

---

✍️ **Resumen elaborado a partir del material de la cátedra – Unidad 1 (Transmisión de datos)**.
