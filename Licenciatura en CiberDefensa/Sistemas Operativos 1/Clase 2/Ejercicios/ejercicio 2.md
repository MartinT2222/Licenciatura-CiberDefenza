# Preguntas sobre representación de datos y sistemas numéricos

## Pregunta 1: Tamaño de "José de San Martín"

**Enunciado:**  
¿Cuántos bits ocupa el nombre "José de San Martín"? ¿Cuántos Bytes?

**Opciones:**  
a. 112 bits, 14 Bytes  
b. 144 bits, 18 Bytes  

### Solución:
1. **Con tildes** (18 caracteres incluyendo espacios):
   - 18 caracteres × 1 Byte/carácter = 18 Bytes
   - 18 Bytes × 8 bits/Byte = 144 bits
   - ✅ **b. 144 bits, 18 Bytes**

2. **Sin tildes** ("Jose de San Martin"):
   - 17 caracteres × 1 Byte = 17 Bytes (136 bits)
   - *(No coincide con las opciones)*

---

## Pregunta 2: Espacio en pendrive de 8GB

**Enunciado:**  
Pendrive de 8 GB (1/4 ocupado). Se añade carpeta con 7 archivos de 2MB cada uno. ¿MB libres?

**Opciones:**  
a. 4667 MB  
b. 6130 MB  

### Solución:
1. Capacidad total: 8 × 1024 = 8192 MB
2. Ocupado: 8192 ÷ 4 = 2048 MB
3. Libre inicial: 8192 - 2048 = 6144 MB
4. Carpeta nueva: 7 × 2 = 14 MB
5. Libre final: 6144 - 14 = 6130 MB  
   ✅ **b. 6130 MB** (equivale a ~5.986 GB)

---

## Pregunta 3: Almacenamiento en discos SSD

**Enunciado:**  
¿Cuántos SSD de 262,144 MB (256GB) se necesitan para 4TB?

**Opciones:**  
a. 16  
b. 15  
c. 14  

### Solución:
1. 4 TB = 4 × 1024 = 4096 GB
2. 262,144 MB = 256 GB por SSD
3. Número de SSD: 4096 ÷ 256 = 16  
   ✅ **a. 16 Unidades**

---

## Pregunta 4: Combinaciones con 9 bits

**Enunciado:**  
¿Cuántas combinaciones posibles con 9 bits?

**Opciones:**  
a. 1024  
b. 512  
c. 128  

### Solución:
- Combinaciones = 2ⁿ = 2⁹ = 512  
  ✅ **b. 512 combinaciones**

---

## Pregunta 5: Pendrive de 8GB con archivos

**Enunciado:**  
Pendrive 8GB con 7600MB ocupados. Calcular:  
a) GB ocupados  
b) MB libres y porcentaje  

**Opciones:**  
1) 7.421875 GB, 592 MB (7.23%)  
2) 7.421875 GB, 1592 MB (19.43%)  
3) 6.213875 GB, 592 MB (7.23%)  

### Solución:
1. GB ocupados: 7600 ÷ 1024 ≈ 7.421875 GB
2. Libre: 8192 - 7600 = 592 MB (7.23%)  
   ✅ **Opción 1**

---

## Pregunta 6: USB 16GB con archivos

**Enunciado:**  
USB 16GB (3/5 ocupado). Se copian:  
- 50 archivos × 3MB  
- 30 archivos × 5MB  
¿GB libres?

**Opciones:**  
5.9 GB | 4.2 GB | 7.9 GB | 6.1 GB  

### Solución:
1. Ocupado: (3/5) × 16384 = 9830.4 MB
2. Libre inicial: 6553.6 MB
3. Archivos nuevos: 300 MB
4. Libre final: 6253.6 MB ≈ 6.1 GB  
   ✅ **6.1 GB**

---

## Pregunta 7: Disco 1TB a binario

**Enunciado:**  
Disco 1TB (40% ocupado). Se copia carpeta de 20×18MB. Convertir espacio libre a binario.

**Opciones:**  
1) 430 GB → 001001100110₂  
2) 534 GB → 001001100110₂  
3) 614 GB → 1001100110₂  

### Solución:
1. Libre inicial: 614.4 GB
2. Carpeta: 360 MB ≈ 0.35 GB
3. Libre final: 614 GB (parte entera)
4. Binario: 614 → 1001100110₂  
   ✅ **614 GB y 1001100110₂**

---

## Pregunta 8: USB 32GB a binario

**Enunciado:**  
USB 32GB (1/4 ocupado). Se copia carpeta de 50×2MB. Convertir espacio usado a binario.

**Opciones:**  
1) 4 GB → 1001₂  
2) 9 GB → 1100₂  
3) 8 GB → 1000₂  

### Solución:
1. Ocupado inicial: 8 GB
2. Carpeta: 100 MB ≈ 0.097 GB
3. Total ocupado: ~8 GB
4. Binario: 8 → 1000₂  
   ✅ **8 GB y 1000₂**

---

## Pregunta 9: Complemento a 2

**Enunciado:**  
Complemento a 2 de 011010.

**Opciones:**  
a) 100101  
b) 100110  
c) 101110  
d) 110110  

### Solución:
1. Complemento a 1: 100101
2. Sumar 1: 100110  
   ✅ **b. 100110**

---

## Pregunta 10: Hexadecimal a decimal

**Enunciado:**  
Convertir 1F3₁₆ a decimal.

**Opciones:**  
a) 479  
b) 435  
c) 499  

### Solución:
1×256 + 15×16 + 3×1 = 499  
✅ **c. 499**

---

## Pregunta 11: Binario a hexadecimal

**Enunciado:**  
Convertir 101101011110₂ a hexadecimal.

**Opciones:**  
a) F5E  
b) B5E  
c) D5C  
d) A7F  

### Solución:
Agrupación: 1011 0101 1110 → B 5 E  
✅ **b. B5E**

---

## Pregunta 12: Rango en 7 bits (complemento a 2)

**Enunciado:**  
Rango representable en 7 bits con complemento a 2.

**Opciones:**  
a) -48 a 49  
b) -64 a 63  
c) -32 a 31  

### Solución:
Rango válido: -2⁶ a (2⁶ -1) = -64 a 63  
✅ **b. -64 a 63**