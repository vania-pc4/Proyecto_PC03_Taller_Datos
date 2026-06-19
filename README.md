# Proyecto PC3 - Empleo, Ingresos e Inseguridad Alimentaria en el Perú

## Descripción
Análisis de la relación entre la condición de empleo e ingresos
laborales y la inseguridad alimentaria en hogares peruanos,
elaborado para el curso de Taller de Procesamiento de Datos 2026-1
de la PUCP. Se utilizan datos de la Encuesta Nacional de Hogares
(ENAHO) 2025 trabajados íntegramente en R.

El análisis explora la relación entre el empleo e ingresos
y las siguientes dimensiones:
- **Demográficas:** grupos de edad, sexo y parentesco con el
  jefe de hogar, ubicación geográfica (dominio, estrato, UBIGEO)
- **Laborales:** categoría ocupacional, rama de actividad
  económica, condición de empleo e ingresos
- **Seguridad alimentaria:** nivel de inseguridad alimentaria
  del hogar

## Autora
Vania Prado - Pontificia Universidad Católica del Perú (PUCP)

## Programas y librerías utilizadas
El proyecto está desarrollado en R 4.5.2 con las siguientes
librerías:
- `tidyverse`: para el procesamiento y visualización de datos
- `janitor`: para limpieza de nombres de variables de la ENAHO

La versión de todas las librerías se controla usando `renv`.

## Estructura del repositorio
├── 00_setup.R               # Script principal: crea carpetas
│                              y enlaza con GitHub
├── datos/
│   ├── crudos/              # Módulos originales ENAHO en
│   │                          formato .csv (no subidos a GitHub)
│   └── procesados/          # Base integrada procesada
├── docs/                    # Documentación del proyecto
├── outputs/                 # Tablas y gráficos
├── scripts/
│   └── 01_carga_merge.R     # Carga y merge de módulos ENAHO
├── .gitignore
├── .Rprofile
├── Proyecto_PC03_Taller_Datos.Rproj
├── README.md
└── renv.lock                # Registro de versiones de librerías

## Módulos ENAHO 2025 utilizados
| Código | Módulo | Rol en el análisis |
|--------|--------|--------------------|
| 5 | Empleo e Ingresos | Variable independiente principal |
| 2082 | Inseguridad Alimentaria | Variable dependiente principal |
| 34 | Sumarias (Variables Calculadas) | Variables de control |
| 2 | Características de Miembros del Hogar | Datos del jefe de hogar |

## Reproducibilidad
Este proyecto usa `renv` para gestionar las versiones de
librerías. Para restaurar el entorno ejecutar:
renv::restore()

## Instrucciones para replicar
1. Clonar el repositorio
2. Descargar los módulos ENAHO 2025 en formato CSV y
   colocarlos en `datos/crudos/`
3. Ejecutar `renv::restore()` para instalar las librerías
4. Ejecutar `00_setup.R`
5. Ejecutar `scripts/01_carga_merge.R`