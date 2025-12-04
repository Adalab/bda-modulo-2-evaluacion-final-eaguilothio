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
* Realizar la petición con requests.get().
* Verificar el código de estado (200 = éxito).
* Convertir la respuesta a JSON.
* Verificar que los datos son del tipo esperado (list).
* Guardar los datos en un DataFrame de Pandas (df_peliculas).
* Contar el número de registros para confirmar la extracción (100 películas).

#### **FASE 2: Creación de la base de datos (Python → MySQL)**
* Conectar con MySQL: use_pure=True garantiza compatibilidad con Python 3.12, evitando problemas en el Kernel.
* Crear la base de datos peliculas_db si no existe.
* Crear la tabla peliculas con las columnas: `id`, `titulo`, `año`, `duracion`, `genero`, `adultos`, `subtitulos`.
* Manejar posibles errores durante la conexión y creación de tablas.

#### **FASE 3: Inserción de datos**

* Definir la consulta SQL con placeholders %s.
* Reemplazar valores NaN por None para que MySQL los acepte como NULL.
* Convertir el DataFrame a lista de listas para poder insertarlo en MySQL.
* Insertar todos los registros con executemany() y confirmar la operación con commit().
* Manejar posibles errores e informar del número de registros insertados.

#### **FASE 4: Consultas SQL**

* Realizar tanto consultas simples como consultas más complejas para analizar los datos insertados en la base de datos.
* Para facilitar la lectura de los resultados, algunas consultas se muestran utilizando DataFrames sin índice, lo que ofrece una presentación más limpia y ordenada.

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

* Ejercicio 1: Practicas todo el proceso de trabajo con datos, desde su obtención hasta su preparación para análisis.
* Ejercicio 2: Aprendes a realizar consultas y analizar información en bases de datos, incluyendo relaciones entre tablas.

