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