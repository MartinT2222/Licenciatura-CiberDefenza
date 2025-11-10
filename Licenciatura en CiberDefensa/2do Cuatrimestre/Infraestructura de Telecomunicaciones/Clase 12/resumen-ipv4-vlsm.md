
# 🧠 **Resumen - Direccionamiento IPv4 y Subredes (VLSM)**

## 📘 **1. Estructura de una Dirección IPv4**

- Una **dirección IPv4** tiene **32 bits**, divididos en dos partes:
  - **Porción de red:** identifica la red a la que pertenece el host.  
  - **Porción de host:** identifica el dispositivo dentro de esa red.
- Para separarlas, se usa una **máscara de subred**, que determina cuántos bits son para la red y cuántos para los hosts.

---

## 🧩 **2. Máscara de Subred**

- La máscara de subred se compara **bit a bit** con la dirección IP usando la operación lógica **AND**.
- Este proceso determina la **dirección de red**.

**Ejemplo:**

```cmd
Dirección IP: 192.168.10.10
Máscara:      255.255.255.0
Dirección de red: 192.168.10.0
```

---

## 🧮 **3. Direccionamiento Classful (por Clases)**

Definido en **RFC 790 (1981)**:

| Clase | Rango | Máscara por defecto | Características |
|--------|--------|---------------------|------------------|
| A | 0.0.0.0 – 127.255.255.255 | /8 | Redes muy grandes |
| B | 128.0.0.0 – 191.255.255.255 | /16 | Redes medianas |
| C | 192.0.0.0 – 223.255.255.255 | /24 | Redes pequeñas |
| D | 224.0.0.0 – 239.255.255.255 | — | Multicast |
| E | 240.0.0.0 – 255.255.255.255 | — | Experimental |

➡️ Fue reemplazado por **Classless Addressing (CIDR)**, que ignora las clases y usa **longitud de prefijo variable**.

---

## 🔢 **4. Longitud del Prefijo (CIDR Notation)**

- Indica la cantidad de bits en **1** de la máscara de subred.  
- Se representa con una barra `/`.

| Máscara | Prefijo | Hosts por red |
|----------|----------|----------------|
| 255.0.0.0 | /8 | ~16 millones |
| 255.255.0.0 | /16 | 65,534 |
| 255.255.255.0 | /24 | 254 |
| 255.255.255.128 | /25 | 126 |
| 255.255.255.192 | /26 | 62 |

---

## 🌐 **5. Tipos de Direcciones**

Cada red tiene:

- **Dirección de red:** identifica la subred (todos los bits de host en 0).  
- **Direcciones de host:** asignables a dispositivos.  
- **Dirección de broadcast:** usada para enviar a todos los hosts (todos los bits de host en 1).

**Ejemplo /24:**

| Tipo | Dirección | Binario (último octeto) |
|-------|------------|--------------------------|
| Red | 192.168.10.0 | 00000000 |
| Primer host | 192.168.10.1 | 00000001 |
| Último host | 192.168.10.254 | 11111110 |
| Broadcast | 192.168.10.255 | 11111111 |

---

## 🧍‍♂️🧍‍♀️ **6. Tipos de Comunicación IPv4**

| Tipo | Descripción | Ejemplo |
|------|--------------|----------|
| **Unicast** | Paquete enviado a un único host | PC → Impresora |
| **Broadcast** | Paquete a todos los hosts de la red | PC → todos los equipos |
| **Multicast** | Paquete a un grupo específico | PC → grupo multicast (224.x.x.x) |

---

## 🏠 **7. Direcciones Privadas y Públicas (RFC 1918)**

| Rango Privado | Prefijo | Uso |
|----------------|----------|------|
| 10.0.0.0 – 10.255.255.255 | /8 | Grandes organizaciones |
| 172.16.0.0 – 172.31.255.255 | /12 | Redes medianas |
| 192.168.0.0 – 192.168.255.255 | /16 | Hogares / pequeñas redes |

Las privadas **no son enrutables en Internet**.  
Para acceder a Internet se usa **NAT (Network Address Translation)**.

---

## 🔁 **8. NAT y sus Tipos**

| Tipo | Descripción | Ejemplo |
|-------|--------------|----------|
| **Static NAT** | 1 IP privada ↔ 1 IP pública fija | Servidor web |
| **Dynamic NAT** | Pool de IPs públicas ↔ privadas | Empresa mediana |
| **PAT** | Muchas privadas ↔ 1 pública (por puertos) | Hogares, oficinas |

---

## ⚙️ **9. Direcciones Especiales**

| Tipo | Rango | Descripción |
|------|--------|--------------|
| **Loopback** | 127.0.0.0/8 | Prueba local (ej: 127.0.0.1) |
| **Link-Local (APIPA)** | 169.254.0.0/16 | Autoasignada sin DHCP |

---

## 🌍 **10. Asignación de Direcciones IP**

- **IANA** gestiona los bloques globales y los distribuye a los **RIR** (Regional Internet Registries).  
- Los **ISP** reparten direcciones a empresas o usuarios.

---

## 📡 **11. Dominios de Broadcast y Segmentación**

- Un **router** detiene los **broadcasts**, creando **diferentes dominios de broadcast**.  
- **Switches** los propagan dentro del mismo dominio.

📉 Problemas de grandes dominios:

- Exceso de tráfico broadcast.  
- Degradación del rendimiento.  

✅ Solución: **Subnetting**, dividir una red en subredes más pequeñas.

---

## 🧱 **12. Razones para Subnetear**

- Mejora el rendimiento.  
- Permite aplicar seguridad por segmentos.  
- Reduce el impacto de fallas o tráfico excesivo.  
- Permite separar por **ubicación**, **grupo** o **función**.

---

## 🧠 **13. Subredes y Cantidad de Hosts**

### 🔹 Dentro de una /24

| Prefijo | Subredes | Hosts/Subred |
|----------|-----------|---------------|
| /25 | 2 | 126 |
| /26 | 4 | 62 |
| /27 | 8 | 30 |
| /28 | 16 | 14 |
| /29 | 32 | 6 |
| /30 | 64 | 2 |

### 🔹 Dividiendo una /16

| Prefijo | Subredes | Hosts/Subred |
|----------|-----------|---------------|
| /17 | 2 | 32,766 |
| /18 | 4 | 16,382 |
| /19 | 8 | 8,190 |
| /20 | 16 | 4,094 |
| /21 | 32 | 2,046 |
| /22 | 64 | 1,022 |
| /23 | 128 | 510 |
| /24 | 256 | 254 |

---

## 🧮 **14. Subneteo de Espacios Públicos y Privados**

- **Intranet:** usa direcciones privadas (ej: 10.0.0.0/8).  
- **DMZ:** servidores expuestos con direcciones públicas.  
- Ejemplo: una empresa puede subnetear 10.0.0.0/8 en redes /24 internas.

---

## 📏 **15. VLSM (Variable Length Subnet Masking)**

- Permite usar **máscaras de distinta longitud** en una misma red.  
- Así se crean **subredes de tamaños diferentes** según la cantidad de hosts necesarios.

**Proceso general:**

1. Comenzar por la subred más grande.  
2. Asignar la máscara adecuada.  
3. Continuar con las subredes más pequeñas.  
4. Aprovechar eficientemente el espacio de direcciones.

---

## 🧩 **Conclusión**

El direccionamiento IPv4 y el uso de **VLSM** permiten:

- Mejor administración de redes.
- Reducción de tráfico innecesario.
- Asignación más eficiente de direcciones IP.
- Flexibilidad para adaptarse a redes de distintos tamaños.
