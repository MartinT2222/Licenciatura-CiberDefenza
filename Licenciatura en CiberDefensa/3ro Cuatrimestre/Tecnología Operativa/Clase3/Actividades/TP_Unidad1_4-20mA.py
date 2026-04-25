import numpy as np  # Librería para cálculos numéricos y manejo de arreglos
import matplotlib.pyplot as plt  # Librería para generar los gráficos de telemetría

# PASO 1: Verificación de la carga de librerías
print("Entorno configurado correctamente")

# PASO 2: Definición de la lógica de conversión del sensor (Estándar 4-20 mA)
def ma_to_percent(ma):
    # El estándar usa 4mA como el 0% (cero vivo). Menos de 2mA indica cable roto.
    if ma < 2.0:
        return None # Interpretación: cable abierto / pérdida de señal
    elif ma < 4.0:
        return "FALLA: fuera de rango" # Interpretación: error de precisión o ruido
    else:
        # Fórmula de conversión: (corriente - base) / rango útil * 100
        return ((ma - 4) / 16) * 100

# PASO 3: Ejecución de pruebas para completar la tabla de datos del trabajo
for test_ma in [0, 4, 8, 12, 16, 20]:
   print(f"{test_ma:5.1f} mA -> {ma_to_percent(test_ma)}")

# PASO 4: Creación de la línea de tiempo (60 segundos)
t = np.linspace(0, 60, 600) 

# PASO 5: Generación de la SEÑAL NORMAL
# Simula un proceso físico real que sube del 20% al 80% de su capacidad
normal = 4 + (16 * (0.2 + 0.6 * (t / 60)))

# PASO 6: Generación de FALLA FÍSICA (Incidente de Disponibilidad)
falla = normal.copy()
# A partir del segundo 30, la señal cae a 0 mA (simula cable cortado)
falla[t > 30] = 0 

# PASO 7: Generación de ATAQUE DE INTEGRIDAD (Sensor Spoofing)
# AQUÍ ES DONDE SE MODIFICA LA SEÑAL PARA EL ATAQUE
spoofing = normal.copy()
# El atacante intercepta la comunicación y "congela" el valor en 12 mA
# Esto ocurre a partir del segundo 30 para ocultar la realidad física
spoofing[t > 30] = 12 

print("Escenarios generados")

# PASO 8: Visualización comparativa de los tres escenarios
fig, axes = plt.subplots(3, 1, figsize=(12, 10))
fig.suptitle("Estándar 4-20 mA: Comparación de Escenarios", fontsize=14, fontweight="bold") 

# Iteración para dibujar cada panel del gráfico
for ax, sig, title, color in zip(axes, 
                                 [normal, falla, spoofing], 
                                 ["SEÑAL NORMAL", "FALLA FÍSICA (Cable Cortado)", "ATAQUE: Sensor Spoofing"], 
                                 ["green", "orange", "red"]):
    ax.plot(t, sig, color=color, linewidth=2) 
    ax.axhline(y=4, color="blue", linestyle="--", alpha=0.5) # Marca el límite de 4mA
    ax.axvline(x=30, color="black", linestyle=":", alpha=0.7) # Marca el inicio del evento
    ax.set_title(title, fontweight="bold", color=color) 
    ax.set_ylabel("Corriente (mA)") 
    ax.set_ylim(-1, 22) 
    ax.grid(True, alpha=0.3) 

plt.tight_layout() 
plt.savefig("escenarios_4-20mA.png", dpi=150) # Guarda el gráfico para el informe
plt.show()

# PASO 9: Simulación específica del CASO GASODUCTO (Ataque Oculto)
t2 = np.linspace(0, 120, 1200) # Tiempo extendido a 120 segundos

# PRESIÓN REAL: El gasoducto se rompe al segundo 60 y la presión cae
presion_real = np.where(t2 < 60, 12, np.maximum(4, 12 - 0.15*(t2-60))) 

# PRESIÓN HMI: ESTA ES LA MANIPULACIÓN DEL ATACANTE
# Aunque la presión real cae, el atacante mantiene el valor en 12 mA en la pantalla (HMI)
presion_hmi  = np.where(t2 < 60, 12, 12)  # Valor congelado para engañar al operador 

# PASO 10: Gráfico final del Gasoducto con resaltado de la "Brecha de Daño"
plt.figure(figsize=(12,5)) 
plt.plot(t2, presion_real, "b-", lw=2.5, label="Presión REAL del gasoducto") 
plt.plot(t2, presion_hmi,  "r--", lw=2.5, label="Señal que ve el operador (SPOOFED)")
# Se sombrea en rojo el área donde el operador cree que todo está bien, pero hay fuga real
plt.fill_between(t2[t2>=60], presion_real[t2>=60], presion_hmi[t2>=60], alpha=0.2, color="red", label="Brecha = Daño oculto") 
plt.axvline(x=60, color="black", linestyle=":", label="Momento de la rotura") 
plt.title("CASO: Gasoducto bajo ataque Sensor Spoofing", fontweight="bold") 
plt.legend()
plt.grid(True, alpha=0.3) 
plt.savefig("gasoducto_spoofing.png", dpi=150) 
plt.show()