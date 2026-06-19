#============================================================
# Proyecto: Empleo, Ingresos e Inseguridad Alimentaria - ENAHO
# Autora: Vania Prado
# Objetivo: Cargar módulos ENAHO y realizar merges
# Fecha: 19-06-2026
#============================================================

library(tidyverse)

# 1. CARGA DE MÓDULOS ----------------------------------------

empleo <- read_csv2("C:/Users/aml/Desktop/Proyecto_PC03_Taller_Datos/datos/crudos/Enaho01a-2025-500.csv",
                    locale = locale(encoding = "latin1"))
inseg_alim <- read_csv2("C:/Users/aml/Desktop/Proyecto_PC03_Taller_Datos/datos/crudos/Enaho01-2025-130.csv",
                        locale = locale(encoding = "latin1"))
sumarias <- read_csv2("C:/Users/aml/Desktop/Proyecto_PC03_Taller_Datos/datos/crudos/Sumaria-2025.csv",
                      locale = locale(encoding = "latin1"))
miembros <- read_csv2("C:/Users/aml/Desktop/Proyecto_PC03_Taller_Datos/datos/crudos/Enaho01-2025-200.csv",
                      locale = locale(encoding = "latin1"))
# 2. VERIFICAR NOMBRES DE COLUMNAS CLAVE ---------------------

names(empleo)
names(inseg_alim)
names(sumarias)
names(miembros)

# 3. MERGE ---------------------------------------------------
# Unión estándar ENAHO: CONGLOME + VIVIENDA + HOGAR

base_integrada <- sumarias %>%
  left_join(empleo,
            by = c("CONGLOME", "VIVIENDA", "HOGAR")) %>%
  left_join(inseg_alim,
            by = c("CONGLOME", "VIVIENDA", "HOGAR")) %>%
  left_join(miembros,
            by = c("CONGLOME", "VIVIENDA", "HOGAR"))

# 4. VERIFICACIÓN --------------------------------------------

glimpse(base_integrada)
nrow(base_integrada)

# 5. EXPORTACIÓN --------------------------------------------

saveRDS(base_integrada, "datos/procesados/base_integrada.rds")
write_csv(base_integrada, "datos/procesados/base_integrada.csv")
