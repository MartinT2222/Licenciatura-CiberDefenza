# Sistemas Operativos I - Unidad 1 / Semana 3
## Resumen del Documento

## Unidades de Medida de Información
---
### Bit (Binary Digit)
- Unidad mínima de información
- Representa 0 o 1

### Byte
- Equivale a 8 bits
- Puede representar un carácter (letra, número, símbolo)

### Múltiplos del Byte
| Unidad       | Equivalencia       |
|--------------|--------------------|
| Kilobyte (KB)| 1024 Bytes         |
| Megabyte (MB)| 1024 KB            |
| Gigabyte (GB)| 1024 MB            |
| Terabyte (TB)| 1024 GB            |
| Petabyte (PB)| 1024 TB            |
| Exabyte (EB) | 1024 PB            |
| Zettabyte (ZB)| 1024 EB           |
---
## Sistemas de Numeración

### Decimal (Base 10)
- Usa dígitos del 0 al 9
- Ejemplo:  
  `3542 = 3×10³ + 5×10² + 4×10¹ + 2×10⁰`

### Binario (Base 2)
- Usa 0 y 1
- Ejemplo:  
  `1101₂ = 1×2³ + 1×2² + 0×2¹ + 1×2⁰ = 13₁₀`

### Hexadecimal (Base 16)
- Usa dígitos del 0 al 9 y letras A-F
- Ejemplo:  
  `5F₁₆ = 5×16 + 15 = 95₁₀`
---
## Conversión entre Sistemas

### Métodos principales
1. **Decimal a Binario**:
   - División sucesiva por 2
   - Concatenación de restos
   Decimal: 23
   23 ÷ 2 = 11, resto 1
   11 ÷ 2 = 5, resto 1
   5 ÷ 2 = 2, resto 1
   2 ÷ 2 = 1, resto 0
   1 ÷ 2 = 0, resto 1

   Resultado: 10111₂
2. **Binario a Decimal**:
   - Suma de potencias de 2 según posición
   Binario: 10111
   = 1×2⁴ + 0×2³ + 1×2² + 1×2¹ + 1×2⁰
   = 16 + 0 + 4 + 2 + 1 = 23₁₀



3. **Decimal a Hexadecimal**:
   - División sucesiva por 16
   - Uso de letras para valores >9
   Decimal: 254
   254 ÷ 16 = 15, resto 14 (E)
   15 ÷ 16 = 0, resto 15 (F)

   Resultado: FE₁₆

4. **Hexadecimal a Binario**:
   - Cada dígito hexadecimal → 4 bits
   Hexadecimal: 2F
   2 = 0010
   F = 1111

   Resultado: 00101111₂
5. **Binario a Hexadecimal**:
   - Agrupación de 4 bits
   - Conversión a dígito hexadecimal
   Binario: 10110100
   Grupos: 1011 0100
   1011 = B
   0100 = 4

   Resultado: B4₁₆
---
## Sistemas de Codificación

### Evolución
- **ASCII (7 bits)**: Representa caracteres básicos (A-Z, 0-9, símbolos).
- **Unicode (UTF-8, UTF-16, UTF-32)**: Representa todos los caracteres de todos los idiomas, emojis, símbolos especiales, etc.

---
### Representación de Datos Numéricos

#### Enteros
| Tipo           | Descripción                          |
|----------------|--------------------------------------|
| Sin signo      | Valores positivos (0 a 2ⁿ-1)         |
| Con signo      |                                      |
| - Signo/Magnitud | Bit más significativo indica signo |
| - Complemento a 1 | Inversión de bits                |
| - Complemento a 2 | Inversión de bits + 1 (más usado)|
| - Exceso a Z    | Desplazamiento fijo                 |
| BCD            | Cada dígito decimal en 4 bits        |

#### Números reales
| Tipo          | Descripción                          |
|---------------|--------------------------------------|
| Punto fijo    | Bits fijos para parte entera/fraccionaria |
| Punto flotante| Mantisa y exponente (IEEE-754)       |

## Estándar IEEE-754

### Formatos principales
| Tipo   | Estructura                          |
|--------|-------------------------------------|
| 32 bits| 1 bit signo, 8 bits exponente (sesgo 127), 23 bits mantisa |
| 64 bits| 1 bit signo, 11 bits exponente (sesgo 1023), 52 bits mantisa |

### Características
- Normalización
- NaN (Not a Number)
- Rangos amplios

## Conclusión

1. Las unidades de medida y sistemas de numeración son fundamentales para entender cómo las computadoras procesan información.

2. Las conversiones entre sistemas permiten la comunicación entre humanos y máquinas.

3. Los sistemas de codificación y representación de datos numéricos son clave para el funcionamiento de los sistemas operativos y aplicaciones.

