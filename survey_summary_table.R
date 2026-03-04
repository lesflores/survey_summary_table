# =========================================================
# TABLA AUTOMÁTICA PARA ENCUESTAS
# Profesora: Lesly Flores
# #CódigoDeTodxs
# =========================================================

# -------------------------
# 1. Paquetes
# -------------------------

library(dplyr)
library(readr)
library(janitor)
library(gtsummary)
library(gt)

# -------------------------
# 2. Leer base
# -------------------------

base <- read_csv("data/base_encuesta.csv") |>
  clean_names()

# -------------------------
# 3. Crear tabla
# -------------------------

tabla <- base |>
  tbl_summary(
    statistic = list(
  all_continuous() ~ "{mean} ({sd}); {median} [{p25}, {p75}]",
  all_categorical() ~ "{n} ({p}%)"
    )
  )

# -------------------------
# 4. Guardar resultado
# -------------------------

gt_tabla <- as_gt(tabla)

gtsave(
  gt_tabla,
  "output/tabla_resumen.html"
)

# =========================================================
# Si cambias la base, la tabla se actualiza automáticamente
# =========================================================

