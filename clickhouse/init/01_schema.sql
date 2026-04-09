CREATE TABLE analytics.fact_sales
(
    dim_tiempo_id UInt32,
    dim_orden_id UInt32,
    dim_product_id UInt32,
    subtotal_por_producto Float32
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(toDate(dim_tiempo_id))
ORDER BY (dim_tiempo_id, dim_product_id);