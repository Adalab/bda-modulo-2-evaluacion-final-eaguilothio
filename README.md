# 🚀 Evaluación Final – Módulo 2

¡Bienvenido/a al repositorio de mi **Evaluación Final del Módulo 2**!

Este proyecto reúne y pone en práctica todo lo aprendido durante el módulo: desde la **extracción de datos mediante APIs**, hasta el **diseño y creación de bases de datos relacionales en MySQL**, finalizando con **consultas para analizar la información obtenida**.

---

## ✨ Cómo Ejecutar el Proyecto

Para ejecutarlo correctamente en tu equipo, sigue estos pasos:

### 1️⃣ Clonar el Repositorio

git clone [URL-DE-TU-REPOSITORIO]

### 2️⃣ Preparar el Entorno

Asegúrate de tener instalado:

- **Python 3**

- **MySQL Workbench**

Utiliza **librerías externas**, recuerda instalarlas en la terminal: pip install nombre-de-la-librería

Aquí se incluyen las que se han usado en el módulo:

- **Conectar y manejar Bases de Datos MySQL**:
import mysql.connector

- **Motor matemático para cálculos numéricos**:
import numpy as np

- **Manejo y análisis de datos en tablas (DataFrames)**:
import pandas as pd

- **Solicitudes para APIs**:
import requests

- **Gestión de errores al conectar a MySQL**:
from mysql.connector import Error

## 🗂️ Cómo Estructurar el Proyecto

### 1️⃣ Ejercicio

En este apartado se realiza:

- **Extracción de datos desde una API**

- **Creación de la base de datos** (en MySQL o desde Python)

- **Inserción de las películas obtenidas**

- **Consultas sobre la base de datos creada**

### 2️⃣ Ejercicio

En este bloque se realizan **consultas SQL sobre la base de datos Sakila**, organizadas en dos niveles:

- **Consultas básicas**:

- **SELECT / FROM**: selección de columnas y tablas.

- **WHERE**: filtrado de registros según condiciones específicas.

- **LIKE / REGEXP**: búsqueda de texto dentro de columnas.

- **DISTINCT**: eliminación de resultados duplicados.

- **BETWEEN / IN / NOT IN**: filtrado por rangos y valores concretos.

- **Consultas avanzadas**:
 
- **COUNT y AVG**: funciones de agregación utilizadas para obtener recuentos y promedios de datos.

- **GROUP BY**: permite agrupar datos para aplicar funciones agregadas.

- **ORDER BY**: ordenar los resultados mejora la interpretación.

- **JOINs** (INNER JOIN: SOLO COINCIDENCIAS, LEFT JOIN:LA TABLA DE LA DERECHA TIENE NULLS): combinación de tablas relacionadas.

- **Uso del modelo EER**: identificar las relaciones entre tablas cuando la consulta es compleja y requiere datos de varias tablas. Para generar el modelo: **MySQL Workbench**: DATABASE → REVERSE ENGINEER → seleccionar el esquema sakila.
