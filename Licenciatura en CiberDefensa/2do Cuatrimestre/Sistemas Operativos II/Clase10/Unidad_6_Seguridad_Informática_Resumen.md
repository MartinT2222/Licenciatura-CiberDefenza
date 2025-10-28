
# 🛡️ Unidad 6 – Seguridad Informática (Resumen Completo)

## 1. Seguridad de la Información

La **seguridad de la información** busca proteger los datos de accesos no autorizados, modificaciones indebidas o pérdida de disponibilidad.  
Abarca desde proteger archivos físicos hasta sistemas informáticos.

### 🔺 Tríada C-I-D (Confidencialidad, Integridad, Disponibilidad)

| Concepto | Qué protege | Ejemplo | Amenazas comunes | Prevención |
|-----------|--------------|----------|------------------|-------------|
| **Confidencialidad** | Que solo personas autorizadas accedan a la información | Contraseña de una cuenta bancaria | Robo de credenciales, ingeniería social, laptop robada | Cifrado, contraseñas seguras, autenticación multifactor |
| **Integridad** | Que los datos sean correctos y no se alteren sin permiso | Un archivo contable sin manipular | Malware que modifica registros, errores humanos | Hash, firmas digitales, control de versiones |
| **Disponibilidad** | Que la información esté accesible cuando se la necesite | Acceso al correo institucional en cualquier momento | Ataques DDoS, cortes eléctricos, fallos de hardware | Backups, redundancia, planes de recuperación |

🔹 **Ejemplo práctico:**  
En un hospital digital:
- **Confidencialidad** → historiales médicos solo visibles para el médico.  
- **Integridad** → diagnóstico sin alteraciones.  
- **Disponibilidad** → el sistema funciona incluso en emergencias.

### 🌍 Normas internacionales

Familia **ISO/IEC 27000**:  
- **27001**: certificable, define el SGSI.  
- **27002**: buenas prácticas.  
- **27005**: gestión de riesgos.  
- **27701**: privacidad.  
- **27032**: ciberseguridad.

---

## 2. Seguridad Informática

Protege la información **digitalizada** en computadoras o redes.  
Incluye cifrado, autenticación, control de accesos y protección ante malware.

💡 Ejemplo: cuando un banco usa doble factor de autenticación (clave + SMS).

---

## 3. Software Maligno (Malware)

**Malware** = software malicioso que daña o roba información.

| Tipo | Qué hace | Ejemplo |
|------|-----------|----------|
| **Virus** | Se adhiere a archivos y se propaga con acción humana | Archivo infectado en pendrive |
| **Gusano (Worm)** | Se replica automáticamente en red | “ILOVEYOU” |
| **Troyano** | Finge ser un programa útil | Crack que abre acceso remoto |
| **Spyware** | Espía al usuario | Robo de contraseñas del navegador |
| **Adware** | Muestra publicidad y recolecta datos | Pop-ups en el navegador |
| **Ransomware** | Cifra archivos y pide rescate | “WannaCry” |
| **Rootkit** | Oculta malware o procesos | Desactiva antivirus |
| **Keylogger** | Registra pulsaciones del teclado | Robo de datos bancarios |
| **Botnet** | Red de equipos controlados por atacante | Ataques DDoS |

---

## 4. Encriptación o Cifrado de Datos

Transforma texto legible (**plano**) en ilegible (**cifrado**) mediante un algoritmo y clave.  
**C = E(P, KE)** y **P = D(C, KD)**.

### 📜 Historia rápida

- Egipto y Roma: jeroglíficos y Cifrado César.  
- Edad Media: Vigenère.  
- Siglo XX: Enigma, DES.  
- Actualidad: RSA, AES, ECC, PGP.

### 🔐 Cifrado Simétrico
Usa una sola clave compartida.  
**Ejemplo:** archivos ZIP protegidos.

- ✅ Rápido.  
- ❌ Requiere canal seguro.  
- 🔸 Ejemplos: DES, 3DES, AES.

### 🔑 Cifrado Asimétrico
Usa dos claves: pública y privada.

**Casos:**  
1. Confidencialidad → clave pública del receptor.  
2. Prueba de origen → clave privada del emisor.  
3. Ambos → firmado y cifrado.

- 🔹 Ejemplos: RSA, ECC, DSA.  
- ❌ Más lento que el simétrico.

### 🎭 Esteganografía
Oculta **la existencia** del mensaje dentro de imágenes o audio.  
Diferencia con criptografía: esta oculta el contenido.

---

## 5. Red Privada Virtual (VPN)

Extiende una red privada sobre Internet mediante **túneles cifrados**.  
Ejemplo: empleado accede desde su casa a la intranet de la empresa.

Ventajas: acceso remoto seguro, bajo costo, cifrado de datos.

---

## 6. Firmas y Certificados Digitales

### ✍️ Firma Digital
Garantiza identidad, integridad y no repudio.  
Ejemplo: firmar correos o documentos PDF.

### 📄 Certificado Digital
Emitido por una **Autoridad de Certificación (CA)**, asocia la identidad con su clave pública.

### ⚙️ Proceso de Firma
1. Genera **hash** (huella digital).  
2. Cifra el hash con la **clave privada**.  
3. Adjunta la firma al documento.

Asegura que cualquier cambio invalida la firma.

---

## 7. Autenticación

Proceso para demostrar identidad de usuario o sistema.

### 🔢 Métodos

| Tipo | Ejemplo | Seguridad |
|------|----------|------------|
| **Conocimiento** | Contraseña, PIN | Baja |
| **Posesión** | Token, SMS | Media |
| **Biométrico** | Huella, rostro, iris | Alta |

**MFA (Multifactor):** combina varios factores para más seguridad.

---

## 🔚 Conclusión

La **seguridad informática** combina personas, procesos y tecnología.  
Su objetivo: mantener la **Confidencialidad, Integridad y Disponibilidad (C-I-D)**.

> CID = la base. Malware = amenaza. Cifrado = defensa. VPN y firmas = herramientas. Autenticación = llave segura.
