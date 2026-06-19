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
usethis::use_git()

# Paso 3a: Crear un token en GitHub
usethis::create_github_token()
# → Esto abrirá tu navegador en GitHub
# → Ponle un nombre al token (ej: "PUCP_R")
# → Selecciona scopes: repo, workflow, gist (ya vienen marcados)
# → Clic en "Generate token"
# → COPIA el token (empieza con ghp_...)

# Paso 3b: Guardar el token en tu computadora
gitcreds::gitcreds_set()
# → Pega el token cuando te lo pida

# Paso 3c: Crear el repositorio público en GitHub
usethis::use_github(private = FALSE)

# Paso 4: .gitignore: excluir datos crudos pesados de ENAHO
usethis::edit_git_ignore()
install.packages("renv")
renv::init()