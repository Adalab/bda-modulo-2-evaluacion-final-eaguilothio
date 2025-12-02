# 🚀 Evaluación Final – Módulo 2

¡Bienvenido/a a mi **Evaluación Final del Módulo 2**!

Este proyecto integra todo lo aprendido durante el módulo: desde la **extracción de datos mediante APIs**, hasta el **diseño y creación de bases de datos relacionales en MySQL**, finalizando con **consultas SQL para analizar la información obtenida**.

---

## 📂 Contenido del Proyecto

1. **Extracción de datos desde una API**
2. **Creación y diseño de base de datos MySQL**
3. **Inserción de datos en la base de datos**
4. **Consultas SQL básicas y avanzadas para el análisis**

---

## ⚡ Cómo Ejecutar el Proyecto

### 1️⃣ Clonar el repositorio

```bash
git clone [URL-DE-TU-REPOSITORIO]
```

### 2️⃣ Preparar el entorno

Asegúrate de tener instalado:

* **Python 3**
* **MySQL Workbench**

---

## 📌 Descripción del Proyecto

### **Ejercicio 1: Extracción y gestión de datos de películas**

#### **FASE 1: Extracción de datos**

* Definir la URL de la API.
* Realizar la petición con `requests.get()`.
* Verificar el código de estado (200 = éxito).
* Convertir la respuesta a JSON.
* Verificar que los datos son del tipo esperado (`list`).
* Guardar los datos en un DataFrame de Pandas (`df_peliculas`).
* Contar el número de registros para confirmar la extracción (100 películas).

#### **FASE 2: Creación de la base de datos (Python → MySQL)**

* Transformar columnas que no son compatibles con SQL (listas → texto).
* Conectar con MySQL usando `mysql.connector.connect()` con manejo de errores.
* Crear la base de datos `peliculas_db` si no existe.
* Crear la tabla `peliculas` con las columnas: `id`, `titulo`, `año`, `duracion`, `genero`, `adultos`, `subtitulos`.
* Manejar posibles errores durante la conexión y creación de tablas.

#### **FASE 3: Inserción de datos**

* Definir la consulta SQL con placeholders `%s`.
* Limpiar los datos (NaN → `None`).
* Convertir el DataFrame a lista de listas para `executemany()`.
* Insertar todos los registros de manera eficiente.
* Confirmar la operación con `commit()` y mostrar el número de registros insertados.
* Manejar errores de inserción y mostrar mensajes claros.

#### **FASE 4: Consultas SQL**

* Consultas simples y complejas para analizar los datos insertados.
* La segunda consulta es más avanzada, requiere comprender las transformaciones previas del DataFrame.

---

### **Ejercicio 2: Consultas sobre la base de datos Sakila**

Se realizan **consultas SQL** organizadas en dos niveles:

#### **Consultas básicas**

* `SELECT / FROM`: selección de columnas y tablas.
* `WHERE`: filtrado por condiciones.
* `LIKE / REGEXP`: búsqueda de texto.
* `DISTINCT`: eliminar duplicados.
* `BETWEEN / IN / NOT IN`: filtrado por rangos o valores específicos.

#### **Consultas avanzadas**

* Funciones de agregación: `COUNT`, `AVG`.
* Agrupamiento: `GROUP BY`.
* Ordenamiento: `ORDER BY`.
* Joins: `INNER JOIN` (solo coincidencias), `LEFT JOIN` (incluye NULLs).

#### **Uso del modelo EER**

Para consultas complejas, se recomienda generar un **modelo EER**:

1. Abrir MySQL Workbench → `Database` → `Reverse Engineer`.
2. Seleccionar la base de datos Sakila y seguir el asistente.
3. Guardar el modelo: `File` → `Export` → `Export as PDF` (o en otro formato).

---

## 📝 Notas finales

- Ejercicio 1: Aprendes todo el proceso de trabajo con datos: desde la extracción de la API, pasando por la limpieza y transformación, hasta el almacenamiento en la base de datos, manejando errores y dejando los datos listos para análisis.

- Ejercicio 2: Con la base de datos Sakila, practicas consultas avanzadas y relaciones entre tablas, comprendiendo cómo conectar y analizar información compleja.


