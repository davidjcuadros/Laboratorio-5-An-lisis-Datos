# LAB 05 - DATA WAREHOUSE & DASHBOARD

## 1. Conexión inicial

Teniendo los contenedores de Postgres y Jupyter corriendo, verificamos que el engine se cree correctamente y funcione:

![Conexión engine](https://github.com/user-attachments/assets/01ac75cd-4a91-49c7-9b7b-0f5af1e4d8c7)

---

## 2. Consulta 1.5

Se construye una consulta en SQL que muestra el id, la empresa y el país de los primeros 10 clientes de la tabla customers:

![Consulta clientes](https://github.com/user-attachments/assets/4e752758-4d9b-4d4a-bc7c-634caf681a9b)

---

## 3. Consulta 1.6

Se consultan los registros de las diferentes tablas:

![Tabla 1](https://github.com/user-attachments/assets/8ef895dd-3f3e-434d-b5a6-0e31bc4316d1)
![Tabla 2](https://github.com/user-attachments/assets/89d4e28f-9f29-483e-993b-6d41703fae80)
![Tabla 3](https://github.com/user-attachments/assets/d96fb673-2a41-4d41-a3a5-68da7fba01c3)
![Tabla 4](https://github.com/user-attachments/assets/cfd7e0c4-68cf-453f-a374-046cc9b0f289)
![Tabla 5](https://github.com/user-attachments/assets/46e8b8c0-b8bb-40b3-a566-a428fd710909)

---

## 4. Consulta 1.7 - JOIN

Consulta compuesta entre órdenes, clientes y empleados.

Se construye una consulta que relaciona orden, cliente y empleado para identificar:
- Qué empleados han vendido a qué clientes
- El costo del flete por orden

![JOIN](https://github.com/user-attachments/assets/7973c346-6e58-4c09-a208-559219e4b7a3)

---

## 5. Conexión con DBeaver

Se establece la conexión con la base de datos:

![DBeaver](https://github.com/user-attachments/assets/f108a7d3-6aea-4d15-857a-78e69020053d)

---

## 6. Creación de tabla eventos

Se crea la tabla eventos en ClickHouse:

![Tabla eventos](https://github.com/user-attachments/assets/c7f3e6b4-f4b8-44ac-bc13-12e2da4b5213)

---

## 7. Inserción de datos

Se insertan datos en la tabla:

![Insert eventos](https://github.com/user-attachments/assets/74f0c457-bd92-4878-a918-de8859d79fa9)

---

## 8. Conexión a ClickHouse

Conexión a la base de datos analytics:

![Conexión ClickHouse](https://github.com/user-attachments/assets/e3e1b2e4-fbf8-4eb6-9935-f7687cb16fbb)

---

## 9. Medición de rendimiento

Medición del rendimiento de ClickHouse:

![Benchmark](https://github.com/user-attachments/assets/29bdc3c1-a422-490e-ae00-80f4805b8967)

**Conclusión:**  
Se observa que a medida que se procesan más datos, el tiempo de ejecución disminuye debido a:
- procesamiento columnar  
- paralelismo  
- uso de caché  

![Gráfica rendimiento](https://github.com/user-attachments/assets/7f4906da-de1c-455e-9686-7f67fca1f91c)

---

## 10. Modelo analítico

### 3.2 Tabla de dimensiones

![Dim tiempo](https://github.com/user-attachments/assets/2a3b09fb-86d5-488a-ad33-01afcba467dd)

### 3.3 Tabla de hechos

![Fact sales](https://github.com/user-attachments/assets/c8f21845-30ac-4b93-aa24-ce68cb040218)

---

## 11. Inserción en dim_tiempo

![Insert dim tiempo](https://github.com/user-attachments/assets/b301f214-4512-45d7-96dc-7f191f48165b)

Verificación:

![Verify dim](https://github.com/user-attachments/assets/dbebdeb9-5c3a-4453-9e9c-c4c030b05fb8)

---

## 12. Inserción en fact_sales

![Insert fact](https://github.com/user-attachments/assets/ca3c80a0-e21d-407c-8eda-65ff3c4dbe8d)

Verificación:

![Verify fact](https://github.com/user-attachments/assets/a003dce3-ef29-4981-b66c-28ff619da3ef)

---

## 13. Consulta analítica

![Consulta ventas](https://github.com/user-attachments/assets/13b602ab-fb99-4915-9d32-04f04b74e47d)

Respuesta a la pregunta de negocio:

![Resultado negocio](https://github.com/user-attachments/assets/4f5ede40-1b95-4a72-a62f-359b3e42b533)

---

## 14. Superset

Creación de cuenta:

![Create user](https://github.com/user-attachments/assets/fa3da95e-b0a0-4a4f-bc37-1b1b5943f7cf)

Ingreso:

![Login](https://github.com/user-attachments/assets/3f295412-d3c2-4ab4-9e77-a1ee81999584)

---

## 15. Conexión Superset - ClickHouse

![Connection](https://github.com/user-attachments/assets/c2b793c0-79c5-4250-b8b0-a7f1cdc51f8a)

---

## 16. Construcción de datasets

![Datasets](https://github.com/user-attachments/assets/1eefb39e-3f21-4129-9a05-8e9b5e6c3989)

---

## 17. Virtual datasets

![Virtual dataset](https://github.com/user-attachments/assets/7b966446-1080-42cb-a1b5-1b24b22ddb42)

---

## 18. Visualización

![Charts](https://github.com/user-attachments/assets/4e7dd3b9-8f63-47b3-b461-99d27e9507e7)

---

