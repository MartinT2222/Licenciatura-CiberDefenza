# 🛡️ Unidad 6 – Seguridad Informática (Resumen Extendido – FADENA 2025)

**Materia:** Sistemas Operativos II  
**Carrera:** Licenciatura en Ciberdefensa  
**Fuente:** Material oficial FADENA – SO2 – Unidad 6 – Semana 12 (2025)

---

## 1. Seguridad de la Información

La **seguridad de la información** abarca todas las medidas preventivas y reactivas para proteger los datos —sin importar su formato o soporte— de accesos no autorizados, alteraciones indebidas o pérdida de disponibilidad.

Incluye políticas, procedimientos y controles que garantizan el resguardo de la información, tanto física como digital.

La información puede existir en distintos medios:
- Electrónicos (bases de datos, redes)
- Verbales (comunicaciones orales)
- Escritos o impresos (documentos físicos)

El objetivo central es preservar tres propiedades esenciales, conocidas como la **Tríada C-I-D**:

| Propiedad | Qué protege | Pregunta clave | Ejemplo | Amenazas comunes | Medidas preventivas |
|------------|--------------|----------------|----------|------------------|----------------------|
| **Confidencialidad** | Acceso restringido solo a usuarios autorizados | ¿Quién puede acceder? | Historial médico, datos bancarios | Acceso no autorizado, ingeniería social, robo de dispositivos | Cifrado, contraseñas seguras, MFA, control de accesos |
| **Integridad** | Precisión y confiabilidad de los datos | ¿Es esta información confiable? | Registros contables o diagnósticos médicos | Alteraciones maliciosas, errores humanos | Hash, firmas digitales, control de versiones |
| **Disponibilidad** | Accesibilidad de la información y sistemas cuando se necesitan | ¿Puedo acceder cuando la necesito? | Acceso al correo o sistemas de emergencias | Ataques DDoS, fallos de hardware, cortes eléctricos | Backups, redundancia, planes de recuperación |

🔹 **Ejemplo práctico:**  
En un entorno hospitalario digital:
- La **confidencialidad** asegura que solo el médico vea los historiales.
- La **integridad** mantiene los diagnósticos sin alteraciones.
- La **disponibilidad** garantiza que los sistemas estén activos durante emergencias.

---

### 🌍 Normas y Estándares Internacionales

La seguridad de la información se ha formalizado mediante la familia de normas **ISO/IEC 27000**, que define un marco de gestión para proteger datos sensibles:

| Norma | Enfoque | Aplicación |
|--------|----------|-------------|
| **27001** | Sistema de Gestión de Seguridad de la Información (SGSI) | Única certificable |
| **27002** | Buenas prácticas y controles técnicos | Apoyo a la 27001 |
| **27005** | Gestión de riesgos de seguridad | Evaluación de amenazas |
| **27701** | Privacidad y protección de datos personales | Extensión del SGSI |
| **27032** | Ciberseguridad | Enfoque en entornos digitales |

Estas normas ayudan a mantener la **Confidencialidad, Integridad y Disponibilidad (CID)** bajo un marco internacional.

---

## 2. Seguridad Informática

Es la **rama de la seguridad de la información** que protege los datos cuando están **digitalizados** o **procesados en sistemas informáticos**.

Su objetivo es asegurar la **CID** de la información almacenada o transmitida electrónicamente.

Incluye aspectos técnicos como:
- Cifrado de datos.
- Autenticación de usuarios.
- Control de accesos.
- Protección frente a malware.
- Seguridad en redes y comunicaciones.

💡 **Ejemplo:** un banco utiliza **doble factor de autenticación (MFA)** para validar accesos.

---

## 3. Software Maligno (Malware)

El **malware** (malicious software) es cualquier programa diseñado para dañar, alterar, espiar o robar información de un sistema sin consentimiento del usuario.

| Tipo | Descripción | Ejemplo |
|------|--------------|----------|
| **Virus** | Se adhiere a archivos y se propaga al ejecutarlos. | Archivos infectados en pendrives. |
| **Gusano (Worm)** | Se replica automáticamente por la red sin intervención humana. | “ILOVEYOU”. |
| **Troyano (Trojan)** | Se disfraza de programa legítimo para dar acceso remoto al atacante. | Crack o instalador falso. |
| **Spyware** | Espía al usuario, recolecta datos personales o bancarios. | Roba credenciales del navegador. |
| **Adware** | Muestra anuncios no deseados o rastrea hábitos de navegación. | Pop-ups publicitarios invasivos. |
| **Ransomware** | Cifra archivos y pide rescate en criptomonedas. | “WannaCry”. |
| **Rootkit** | Oculta procesos o malware en el sistema. | Desactiva antivirus o altera el kernel. |
| **Keylogger** | Registra pulsaciones del teclado. | Robo de contraseñas. |
| **Botnet** | Red de equipos infectados controlados remotamente. | Ataques DDoS. |

**Prevención recomendada (según FADENA):**
- Antivirus actualizado y monitoreo activo.  
- Control de accesos y privilegios.  
- Educación sobre phishing e ingeniería social.  
- Políticas de backup y actualización de sistemas.

---

## 4. Encriptación o Cifrado de Datos

El **cifrado** transforma datos legibles (**texto plano**) en ilegibles (**texto cifrado**) mediante un algoritmo y una clave.

**Fórmulas básicas:**
- Cifrado: `C = E(P, KE)`  
- Descifrado: `P = D(C, KD)`

📘 **Principio de Kerckhoffs:**  
La seguridad no debe depender del secreto del algoritmo, sino de la clave utilizada.

---

### 🕰️ Breve Historia de la Criptografía

- **Antigüedad:** jeroglíficos egipcios, Cifrado César, Scytale espartana.  
- **Edad Media:** cifrado polialfabético de Alberti, cuadrado de Vigenère.  
- **Siglo XX:** Enigma, DES, 3DES, RSA.  
- **Actualidad:** AES, ECC, PGP.  

---

### 🔐 Cifrado Simétrico

Usa **una única clave** compartida para cifrar y descifrar.

**Funcionamiento:**
1. El emisor cifra con la clave compartida.
2. El receptor descifra con la misma clave.

| Ventajas | Desventajas |
|-----------|--------------|
| Rápido y eficiente. | Requiere canal seguro para compartir la clave. |
| Ideal para grandes volúmenes de datos. | Si la clave se filtra, todo el sistema queda comprometido. |
| Utilizado en VPN y discos cifrados. | No asegura prueba de origen ni no repudio. |

**Ejemplos:** DES, 3DES, AES, RC4, Blowfish.

---

### 🔑 Cifrado Asimétrico

Usa **dos claves**:  
- **Pública** (difundida libremente).  
- **Privada** (solo el propietario la posee).

**Casos de uso:**
1. **Confidencialidad:** el emisor usa la clave pública del receptor.  
2. **Prueba de origen:** el emisor cifra con su clave privada.  
3. **Ambas (signed):** combina confidencialidad y autenticación.

| Ventajas | Desventajas |
|-----------|--------------|
| Garantiza confidencialidad y autenticidad. | Más lento que el simétrico. |
| Mejora la gestión de claves. | Ineficiente para grandes volúmenes. |

**Ejemplos:** RSA, ECC, DSA, ElGamal.

---

### 🎭 Esteganografía

Oculta la existencia del mensaje dentro de otros medios (imagen, audio o texto).  
A diferencia del cifrado, **no transforma el contenido**, sino que lo **disimula**.

**Ejemplo:** ocultar datos modificando los bits menos significativos de una imagen (LSB).

---

## 5. Red Privada Virtual (VPN)

Una **VPN (Virtual Private Network)** extiende una red privada sobre Internet mediante **túneles cifrados**, protegiendo la comunicación entre el usuario y la red interna.

**Usos:**
- Acceso remoto seguro a redes corporativas.
- Cifrado de tráfico en conexiones públicas.
- Ahorro de costos frente a líneas dedicadas.

**Beneficios clave (FADENA):**
- Confidencialidad del tráfico.
- Integridad de los datos.
- Acceso remoto flexible desde cualquier ubicación.

---

## 6. Firmas y Certificados Digitales

### ✍️ Firma Digital

Conjunto de datos electrónicos asociados a un documento digital que:
- Identifican al firmante.
- Garantizan la **integridad** del documento.
- Aseguran el **no repudio** (el autor no puede negar haber firmado).

**Aplicaciones comunes:**
- Firma de correos electrónicos.
- Presentación de trámites en línea.
- Declaraciones fiscales o informes digitales.

---

### 📄 Certificado Digital

Documento emitido por una **Autoridad de Certificación (CA)** que asocia la identidad de una persona con su clave pública.

**Ejemplo práctico:**  
En el navegador, al hacer clic en el candado del sitio `https://campus.fadena.undef.edu.ar`, se puede visualizar el certificado digital que garantiza la autenticidad del dominio.

---

### ⚙️ Proceso de Firma Digital

1. **Generación del hash:** se calcula una “huella digital” única del documento.  
2. **Cifrado del hash:** se cifra con la clave privada del firmante.  
3. **Creación de la firma:** el hash cifrado se adjunta al documento.

Si el documento se altera, el hash resultante no coincide, invalidando la firma.

---

## 7. Autenticación

Proceso mediante el cual un sistema o persona **demuestra su identidad** ante otro sistema.

**Partes involucradas:**
- **Remitente:** quien intenta autenticarse.  
- **Verificador:** quien valida la identidad.

**Importancia:**  
Evita accesos indebidos y garantiza control sobre recursos críticos.

---

### 🔢 Métodos de Autenticación

| Tipo | Qué representa | Ejemplo |
|------|----------------|----------|
| **Conocimiento** | Algo que sabes | Contraseña, PIN, pregunta secreta |
| **Posesión** | Algo que tienes | Token, tarjeta, SMS con código |
| **Característica Física (biometría)** | Algo que eres | Huella, rostro, iris |

**Autenticación Multifactor (MFA):**  
Combina dos o más de los factores anteriores para incrementar la seguridad (ejemplo: contraseña + huella).

---

### 🧩 Proceso de Conexión del Usuario

1. **Conexión Inicial (Puesto de trabajo):** el usuario se autentica al iniciar sesión y obtiene acceso a recursos básicos (archivos, red, impresoras).  
2. **Conexión a una aplicación específica:** se realiza una autenticación adicional dentro del software para validar permisos específicos.

Una gestión correcta de **identidades y accesos (IAM)** garantiza que cada usuario tenga los derechos adecuados según su rol.

---

## 🔚 Conclusión

La **seguridad informática** es un pilar esencial de la ciberdefensa moderna.  
Su misión es mantener la **Confidencialidad, Integridad y Disponibilidad** de la información frente a amenazas tecnológicas.

**Resumen clave:**
- **CID:** base de toda política de seguridad.  
- **Malware:** principal amenaza.  
- **Cifrado:** herramienta de defensa.  
- **Firmas y certificados:** garantizan identidad y autenticidad.  
- **VPN:** protección del canal de comunicación.  
- **Autenticación:** control de acceso y confianza.

---

📘 **Fuente:**  
_FADENA – SO2 – Unidad 6 – Semana 12 – 2025 (Licenciatura en Ciberdefensa)_
