#===========================================================================================
#Proyecto: Análisis --- usando datos de la ENAHO
#Autora: Vania Prado
#Objetivo de este script: Crear el sistema de carpetas y enlazar con GitHub
#Fecha: 19-06-2026
#==========================================================================================

# 1. CREAR ESTRUCTURA DE CARPETAS -------------------------

dir.create("datos")
dir.create("datos/crudos")
dir.create("datos/procesados")
dir.create("outputs")
dir.create("docs")
dir.create("scripts")

# 2. ENLACE CON GIT Y GITHUB ------------------------------

install.packages("usethis")   # Solo la primera vez
install.packages("rlang")
install.packages("gitcreds")  # Solo la primera vez

# Inicializar Git en el proyecto
