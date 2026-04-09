Teniendo los contenedores de Postgres y Jupyter corriendo, verificamos que se cree el engine y este funcione:
<img width="1129" height="633" alt="image" src="https://github.com/user-attachments/assets/01ac75cd-4a91-49c7-9b7b-0f5af1e4d8c7" />

Respondemos a la query 1.5:
Construya una consulta en SQL que muestre el id, la empresa y el país de los primeros 10 clientes de la tabla customers


<img width="802" height="427" alt="image" src="https://github.com/user-attachments/assets/4e752758-4d9b-4d4a-bc7c-634caf681a9b" />

Respondemos a la solicitud 1.6:
Consultamos los registros de las tablas
<img width="809" height="508" alt="image" src="https://github.com/user-attachments/assets/8ef895dd-3f3e-434d-b5a6-0e31bc4316d1" />
<img width="606" height="514" alt="image" src="https://github.com/user-attachments/assets/89d4e28f-9f29-483e-993b-6d41703fae80" />
<img width="747" height="523" alt="image" src="https://github.com/user-attachments/assets/d96fb673-2a41-4d41-a3a5-68da7fba01c3" />
<img width="683" height="525" alt="image" src="https://github.com/user-attachments/assets/cfd7e0c4-68cf-453f-a374-046cc9b0f289" />
<img width="657" height="518" alt="image" src="https://github.com/user-attachments/assets/46e8b8c0-b8bb-40b3-a566-a428fd710909" />

CONSULTA 1.7: Consulta compuesta JOIN de órdenes, clientes y empleados 
Construya una consulta que relacione orden cliente y empleado para identificar empleados que han vendido a un cliente en particular, y el costo del flete para una orden.
<img width="871" height="493" alt="image" src="https://github.com/user-attachments/assets/7973c346-6e58-4c09-a208-559219e4b7a3" />

Nos conectamos con DBeaver:
<img width="722" height="601" alt="image" src="https://github.com/user-attachments/assets/f108a7d3-6aea-4d15-857a-78e69020053d" />

Creamos tabla eventos:
<img width="250" height="197" alt="image" src="https://github.com/user-attachments/assets/c7f3e6b4-f4b8-44ac-bc13-12e2da4b5213" />

Insertamos la información:
<img width="927" height="708" alt="image" src="https://github.com/user-attachments/assets/74f0c457-bd92-4878-a918-de8859d79fa9" />

2.2 Conexión a la base de datos analytics de ClickHouse
<img width="603" height="399" alt="image" src="https://github.com/user-attachments/assets/e3e1b2e4-fbf8-4eb6-9935-f7687cb16fbb" />

2.3. Medir el rendimiento de ClickHouse
<img width="272" height="180" alt="image" src="https://github.com/user-attachments/assets/29bdc3c1-a422-490e-ae00-80f4805b8967" />
Aquí podemos concluir que entre más filas procesa, menos tiempo ocupa.
<img width="711" height="433" alt="image" src="https://github.com/user-attachments/assets/7f4906da-de1c-455e-9686-7f67fca1f91c" />

3.2. Creación de la Tabla de Dimensiones
<img width="676" height="609" alt="image" src="https://github.com/user-attachments/assets/2a3b09fb-86d5-488a-ad33-01afcba467dd" />

3.3 Creación de la Tabla de Hechos
<img width="493" height="489" alt="image" src="https://github.com/user-attachments/assets/c8f21845-30ac-4b93-aa24-ce68cb040218" />

3.4 Inserción en la Tabla dim_tiempo
<img width="675" height="431" alt="image" src="https://github.com/user-attachments/assets/b301f214-4512-45d7-96dc-7f191f48165b" />
Y observamos en DBeaver que ya se encuentran insertadas:
<img width="757" height="565" alt="image" src="https://github.com/user-attachments/assets/dbebdeb9-5c3a-4453-9e9c-c4c030b05fb8" />

3.5 Insertar Datos en la Tabla de Hechos
<img width="463" height="483" alt="image" src="https://github.com/user-attachments/assets/ca3c80a0-e21d-407c-8eda-65ff3c4dbe8d" />
Verificamos que los datos ya se encuentran insertados
<img width="643" height="542" alt="image" src="https://github.com/user-attachments/assets/a003dce3-ef29-4981-b66c-28ff619da3ef" />

3.6 Consultar la tabla de Hechos y graficamos
<img width="889" height="494" alt="image" src="https://github.com/user-attachments/assets/13b602ab-fb99-4915-9d32-04f04b74e47d" />
Respondemos a la pregunta de negocio:
<img width="433" height="409" alt="image" src="https://github.com/user-attachments/assets/4f5ede40-1b95-4a72-a62f-359b3e42b533" />

4.2 Conexión de Superset a Clickhouse
Creación de cuenta:
<img width="927" height="315" alt="image" src="https://github.com/user-attachments/assets/fa3da95e-b0a0-4a4f-bc37-1b1b5943f7cf" />

Ingreso a plataforma:
<img width="1298" height="687" alt="image" src="https://github.com/user-attachments/assets/3f295412-d3c2-4ab4-9e77-a1ee81999584" />

4.2 Conexión de Superset a Clickhouse

<img width="850" height="648" alt="image" src="https://github.com/user-attachments/assets/c2b793c0-79c5-4250-b8b0-a7f1cdc51f8a" />

4.3 Construir Datasets
<img width="1222" height="590" alt="image" src="https://github.com/user-attachments/assets/1eefb39e-3f21-4129-9a05-8e9b5e6c3989" />

4.4 Construir Virtual Datasets
<img width="1130" height="97" alt="image" src="https://github.com/user-attachments/assets/7b966446-1080-42cb-a1b5-1b24b22ddb42" />

4.5 Crear gráficos
<img width="1363" height="630" alt="image" src="https://github.com/user-attachments/assets/4e7dd3b9-8f63-47b3-b461-99d27e9507e7" />

