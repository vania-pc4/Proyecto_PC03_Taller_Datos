# Proyecto PC3 - Empleo, Ingresos e Inseguridad Alimentaria en el Perú

## Descripción
Análisis de la relación entre la condición de empleo e ingresos 
laborales y la inseguridad alimentaria en hogares peruanos, 
utilizando los módulos de la ENAHO 2025.

## Autora
Vania Prado - Pontificia Universidad Católica del Perú (PUCP)

## Estructura del repositorio
- `00_setup.R`         → Script principal: crea carpetas y enlaza con GitHub
- `scripts/`           → Scripts de análisis
- `datos/crudos/`      → Módulos originales ENAHO (no subidos a GitHub)
- `datos/procesados/`  → Base integrada y limpia
- `outputs/`           → Tablas y gráficos
- `docs/`              → Documentación adicional

## Módulos ENAHO 2025 utilizados
| Código | Módulo | Rol en el análisis |
|--------|--------|--------------------|
| 5 | Empleo e Ingresos | Variable independiente |
| 2082 | Inseguridad Alimentaria | Variable dependiente |
| 34 | Sumarias (Variables Calculadas) | Variables de control |
| 2 | Características de Miembros del Hogar | Datos del jefe de hogar |

## Reproducibilidad
Este proyecto usa `renv` para gestionar las versiones de librerías.
Para restaurar el entorno ejecutar: renv::restore()

## Instrucciones para replicar
1. Clonar el repositorio
2. Descargar los módulos ENAHO 2025 en formato CSV y 
   colocarlos en `datos/crudos/`
3. Ejecutar `renv::restore()` para instalar las librerías
4. Ejecutar `00_setup.R`
5. Ejecutar `scripts/01_carga_merge.R`