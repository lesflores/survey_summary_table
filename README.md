# Tabla automática para encuestas en R

Una plantilla sencilla para generar **tablas descriptivas estandarizadas** en R.

La idea es simple:

✅ Crear la tabla **una sola vez**  
✅ Mantener siempre el mismo formato  
✅ Evitar copiar y pegar resultados  

#CódigoDeTodxs

---

# ¿Qué hace este script?

A partir de una base de datos:

- calcula **media y desviación estándar**
- calcula **mediana y percentiles**
- calcula **frecuencias y porcentajes**
- genera una **tabla lista para reportes**

Todo de forma automática.

---

# Ejemplo de salida

| Variable | Estadístico |
|--------|-------------|
Edad | 35.4 (12.1); 34 [26, 43] |
Sexo | 280 (54%) |

---

# Paquetes utilizados

Este script usa:

- `dplyr`
- `janitor`
- `gtsummary`
- `gt`
- `readr`
