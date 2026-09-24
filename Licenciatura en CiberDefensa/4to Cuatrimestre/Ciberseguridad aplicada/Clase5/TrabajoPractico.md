# Trabajo Práctico: Diseño y Segmentación de Subredes IPv4 (CIDR / VLSM)

**Asignatura:** Ciberseguridad Aplicada  
**Tema:** Segmentación de Redes, Subnetting y Reducción del Dominio de Broadcast  

---

## 📋 Enunciado de la Consigna

> A partir del bloque de red asignado **`192.168.100.0/24`**, diseñar una estructura de direccionamiento que permita obtener **al menos 6 subredes independientes**, garantizando que cada una de ellas soporte una capacidad mínima de **30 hosts utilizables**.

---

## 1. Análisis de Parámetros de Origen

* **Dirección de Red Base:** `192.168.100.0`
* **Clase Original:** Clase C privada (RFC 1918)
* **Máscara de Red Original:** `255.255.255.0` (Prefijo CIDR: `/24`)
* **Distribución de Bits Original:**
  * **Porción de Red:** 24 bits (`11111111.11111111.11111111.00000000`)
  * **Porción de Host:** 8 bits en el 4.º octeto ($2^8 = 256$ direcciones totales)
* **Fundamento Técnico:** La aplicación de **CIDR** (*Classless Inter-Domain Routing*) y **VLSM** (*Variable Length Subnet Mask*) permite superar la rigidez de las clases tradicionales, "tomando bits prestados" de la porción de host para subdividir el espacio en subredes eficientes y aisladas.

---

## 2. Desarrollo Matemático y Desglose Binario

### Paso A: Cálculo de Bits de Host ($h$)
La cantidad de direcciones IP útiles asignables a dispositivos se rige por la fórmula:
$$\text{Hosts útiles} = 2^h - 2$$
*(Se restan 2 direcciones: la primera identifica la Red y la última corresponde al Broadcast).*

* Para cumplir con el requerimiento de **al menos 30 hosts**:
  * Si $h = 4$: $2^4 - 2 = 16 - 2 = 14 \text{ hosts}$ *(Insuficiente)*.
  * Si $h = 5$: $2^5 - 2 = 32 - 2 = \mathbf{30 \text{ hosts útiles}}$ *(Cumple exactamente el requerimiento)*.
* **Decisión:** Se deben reservar **$h = 5$ bits** para la porción de host.

### Paso B: Cálculo de Bits Prestados para Subred ($s$)
Dado que el cuarto octeto dispone de 8 bits totales:
$$s = 8 \text{ bits totales} - 5 \text{ bits de host} = \mathbf{3 \text{ bits prestados para subred}}$$

La cantidad de subredes independientes obtenidas se calcula con la fórmula:
$$\text{Subredes generadas} = 2^s = 2^3 = \mathbf{8 \text{ subredes independientes}}$$

> [!NOTE] **Verificación de la Consigna:**
> Al generar **8 subredes**, se satisface y supera con margen la exigencia de crear **al menos 6 subredes** (quedando 2 subredes disponibles para expansión futura).

---

## 3. Determinación de la Nueva Máscara y Salto de Red

### A. Nuevo Prefijo CIDR
$$\text{Prefijo resultante} = 24 \text{ bits base} + 3 \text{ bits prestados} = \mathbf{/27}$$

### B. Desglose Binario del 4.º Octeto
$$\underbrace{\mathbf{1} \quad \mathbf{1} \quad \mathbf{1}}_{\text{Subred (3 bits)}} \quad \underbrace{0 \quad 0 \quad 0 \quad 0 \quad 0}_{\text{Host (5 bits)}}$$

| Bit | $2^7$ (128) | $2^6$ (64) | $2^5$ (32) | $2^4$ (16) | $2^3$ (8) | $2^2$ (4) | $2^1$ (2) | $2^0$ (1) |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Valor** | **1** | **1** | **1** | 0 | 0 | 0 | 0 | 0 |
| **Función** | *Subred* | *Subred* | *Subred* | *Host* | *Host* | *Host* | *Host* | *Host* |

$$\text{Valor decimal del octeto} = 128 + 64 + 32 = \mathbf{224}$$
$$\mathbf{\text{Máscara de Subred: } 255.255.255.224}$$

### C. Tamaño del Bloque (Salto de Red)
$$\text{Salto} = 256 - 224 = 2^5 = \mathbf{32 \text{ direcciones por bloque}}$$

---

## 4. Cuadro de Direccionamiento de las 6 Subredes Solicitadas

Aplicando el incremento de 32 direcciones en el cuarto octeto, se obtiene el siguiente esquema formal:

| Subred | Dirección de Red | Máscara de Subred | Primer Host Útil | Último Host Útil | Dirección de Broadcast | Capacidad Útil |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: |
| **Subred 1** | `192.168.100.0` | `255.255.255.224` (/27) | `192.168.100.1` | `192.168.100.30` | `192.168.100.31` | 30 hosts |
| **Subred 2** | `192.168.100.32` | `255.255.255.224` (/27) | `192.168.100.33` | `192.168.100.62` | `192.168.100.63` | 30 hosts |
| **Subred 3** | `192.168.100.64` | `255.255.255.224` (/27) | `192.168.100.65` | `192.168.100.94` | `192.168.100.95` | 30 hosts |
| **Subred 4** | `192.168.100.96` | `255.255.255.224` (/27) | `192.168.100.97` | `192.168.100.126`| `192.168.100.127`| 30 hosts |
| **Subred 5** | `192.168.100.128`| `255.255.255.224` (/27) | `192.168.100.129`| `192.168.100.158`| `192.168.100.159`| 30 hosts |
| **Subred 6** | `192.168.100.160`| `255.255.255.224` (/27) | `192.168.100.161`| `192.168.100.190`| `192.168.100.191`| 30 hosts |

---

## 5. Subredes de Reserva para Crecimiento Futuro

Dado que el esquema generó 8 subredes totales, quedan **2 subredes disponibles** para evitar reestructuraciones futuras de direccionamiento:

* **Subred 7 (Reserva):** `192.168.100.192/27`  
  * *Rango asignable:* `192.168.100.193` — `192.168.100.222` | *Broadcast:* `192.168.100.223`
* **Subred 8 (Reserva):** `192.168.100.224/27`  
  * *Rango asignable:* `192.168.100.225` — `192.168.100.254` | *Broadcast:* `192.168.100.255`

---

## 6. Validación Técnica e Impacto en Ciberseguridad

### A. Verificación de No Solapamiento (*Non-overlapping*)
Se constata que ningún rango de direcciones útiles ni direcciones de difusión (*broadcast*) se superpone con los bloques contiguos. Cada subred representa un espacio cerrado y contiguo de 32 direcciones IP.

### B. Beneficios de Ciberseguridad Aplicada
1. **Aislamiento de Dominios de Broadcast:** Cada subred limita la propagación de tramas de difusión, mejorando el rendimiento de los enlaces y mitigando ataques basados en envenenamiento ARP generalizado (*ARP Spoofing*).
2. **Contención de Amenazas y Movimiento Lateral:** Al segmentar la red plana en zonas `/27`, un atacante que comprometa un host no puede alcanzar directamente a los demás departamentos sin atravesar un router o firewall con reglas de control de acceso (ACLs).
3. **Aplicación del Principio de Mínimo Privilegio:** Permite asociar cada subred a una función o rol específico (ej. Administración, Servidores, Recepción, DMZ), aplicando políticas de filtrado restrictivas según el perfil del usuario.

### C. Matriz de Cumplimiento de la Consigna

- [x] **Red base respetada:** `192.168.100.0/24`.
- [x] **Cantidad de subredes requeridas:** 6 asignadas (de 8 posibles).
- [x] **Capacidad por subred:** 30 hosts útiles garantizados en cada segmento.
- [x] **Máscara calculada:** `255.255.255.224` (`/27`).
- [x] **Identificación completa:** Network ID, Gateway/Primer host, Último host y Broadcast especificados.
