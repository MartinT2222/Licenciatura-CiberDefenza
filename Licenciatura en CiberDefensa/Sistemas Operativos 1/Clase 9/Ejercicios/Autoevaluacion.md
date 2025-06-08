# Cuestionario de Computación en la Nube y Contenedores

---

### **Pregunta 1**  
**¿Qué herramienta facilita el despliegue y gestión de contenedores en la nube de manera escalable?**  
**Respuesta correcta:**  
**c. Kubernetes**

**Explicación:**  
Kubernetes es una plataforma de orquestación de contenedores diseñada para automatizar el despliegue, escalado y gestión de aplicaciones en contenedores en entornos de nube o locales. Es ampliamente utilizado para gestionar clústeres de contenedores de manera eficiente y escalable.

**Por qué no las otras opciones:**
- **a. Puppet:** Es una herramienta de gestión de configuración, no específica para contenedores.
- **b. Terraform:** Se usa para infraestructura como código (IaC), no para gestionar contenedores directamente.
- **d. Vagrant:** Crea y gestiona entornos virtuales, no contenedores.

**Conclusión:** Kubernetes es la opción más adecuada para orquestar contenedores en la nube de forma escalable.

---

### **Pregunta 2**  
**¿Qué servicio de computación en la nube ofrece infraestructura básica como servidores y almacenamiento?**  
**Respuesta correcta:**  
**d. IaaS (Infrastructure as a Service)**

**Explicación:**  
IaaS proporciona recursos fundamentales como servidores virtuales, almacenamiento y redes, permitiendo al usuario controlar sistemas operativos y aplicaciones sin gestionar hardware físico.

**Por qué no las otras opciones:**
- **a. VPN:** Tecnología de red segura, no un servicio de nube.
- **b. SaaS:** Ofrece software, no infraestructura.
- **c. PaaS:** Proporciona un entorno de desarrollo, no control completo sobre la infraestructura.

**Conclusión:** IaaS es el modelo ideal para proveer infraestructura básica en la nube.

---

### **Pregunta 3**  
**¿Qué tipo de contenedor permite ejecutar múltiples instancias de sistemas operativos de manera aislada?**  
**Respuesta correcta:**  
**b. Contenedor de infraestructura**

**Explicación:**  
Los contenedores de infraestructura (como LXC o LXD) permiten ejecutar múltiples sistemas operativos aislados en el mismo host, virtualizando un entorno completo de SO.

**Por qué no las otras opciones:**
- **a. Contenedor sandbox:** Aislamiento de seguridad, no múltiples SO.
- **c. Contenedor de procesos:** Aíslan procesos, comparten el kernel del host.
- **d. Contenedor híbrido:** No es un término estandarizado.

**Conclusión:** Los contenedores de infraestructura permiten el aislamiento completo de SO, a diferencia de los de procesos.

---

### **Pregunta 4**  
**¿Qué modelo de computación en la nube permite a los desarrolladores construir aplicaciones sin gestionar la infraestructura subyacente?**  
**Respuesta correcta:**  
**b. PaaS (Platform as a Service)**

**Explicación:**  
PaaS permite a los desarrolladores centrarse en escribir código sin preocuparse por la infraestructura, ya que el proveedor la administra.

**Por qué no las otras opciones:**
- **a. IaaS:** Ofrece infraestructura, pero requiere gestión del sistema.
- **c. VPN:** Tecnología de red, no un modelo de nube.
- **d. SaaS:** Entrega software final, no un entorno de desarrollo.

---

### **Pregunta 5**  
**¿Cuál es una ventaja de Docker sobre las máquinas virtuales tradicionales?**  
**Respuesta correcta:**  
**c. Es más liviano y eficiente**

**Explicación:**  
Docker comparte el núcleo del SO del host, por lo que consume menos recursos y se ejecuta más rápido que una máquina virtual.

**Por qué no las otras opciones:**
- **a. Depende de un hipervisor:** Falso, Docker no lo necesita.
- **b. Mayor consumo de recursos:** Falso, es más eficiente.
- **d. No permite ejecución múltiple:** Falso, se pueden ejecutar múltiples contenedores.

---

### **Pregunta 6**  
**¿Qué tipo de nube es utilizada exclusivamente por una organización y puede alojarse en su propio centro de datos?**  
**Respuesta correcta:**  
**b. Nube privada**

**Explicación:**  
La nube privada es usada por una única organización, ya sea alojada internamente o gestionada externamente, ofreciendo mayor control y seguridad.

**Por qué no las otras opciones:**
- **a. Multinube:** Uso de múltiples proveedores.
- **c. Nube pública:** Infraestructura compartida.
- **d. Nube híbrida:** Combina nube privada y pública.

---

### **Pregunta 7**  
**¿Cuál de las siguientes afirmaciones sobre computación en la nube es verdadera?**  
**Respuesta correcta:**  
**b. Permite acceso a recursos de TI bajo un modelo de pago por uso**

**Explicación:**  
La nube permite usar recursos bajo demanda, pagando solo por lo consumido, lo que mejora eficiencia y reduce costos.

**Por qué no las otras opciones:**
- **a. No se puede escalar:** Falso, la nube es altamente escalable.
- **c. Solo redes privadas:** Falso, funciona en cualquier red.
- **d. Requiere hardware dedicado:** Falso, se basa en virtualización.

---

### **Pregunta 8**  
**¿Cuál de las siguientes herramientas utiliza principalmente un enfoque declarativo en IaC?**  
**Respuesta correcta:**  
**b. Terraform**

**Explicación:**  
Terraform define el estado deseado de la infraestructura y lo aplica automáticamente, usando un enfoque declarativo.

**Por qué no las otras opciones:**
- **a. Ansible:** Mezcla enfoques.
- **c. Bash scripting:** Enfoque imperativo.
- **d. Chef:** Mayormente imperativo.

---

### **Pregunta 9**  
**¿Qué función tiene Vagrant en la virtualización?**  
**Respuesta correcta:**  
**b. Crear y gestionar entornos de desarrollo portables**

**Explicación:**  
Vagrant automatiza la creación y configuración de entornos virtuales de desarrollo reproducibles, facilitando la colaboración.

**Por qué no las otras opciones:**
- **a. Administrar redes:** No es su enfoque principal.
- **c. Implementar contenedores:** Eso lo hace Docker/Kubernetes.
- **d. Ejecutar SO:** Lo hacen los hipervisores, no Vagrant directamente.

---

### **Pregunta 10**  
**¿Cuál es la función principal de Kubernetes?**  
**Respuesta correcta:**  
**b. Orquestar y administrar contenedores en producción**

**Explicación:**  
Kubernetes automatiza el despliegue, escalado, recuperación y actualización de contenedores en entornos productivos.

**Por qué no las otras opciones:**
- **a. Ejecutar máquinas virtuales:** Lo hacen los hipervisores.
- **c. Configurar redes:** No es su función principal.
- **d. Crear entornos de desarrollo:** No es su propósito directo.

---
